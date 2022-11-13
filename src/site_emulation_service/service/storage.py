import psycopg2
import psycopg2.extras
import requests

class PG():
    def __init__(self, host, port, password, user,db):
        self.host = host
        self.port = port
        self.password = password
        self.user = user
        self.db = db
        self.connection = None

    def connect(self):
        self.connection = psycopg2.connect(user=self.user,
                                      password=self.password,
                                      host=self.host,
                                      port=self.port,
                                      database=self.db,
                                           cursor_factory=psycopg2.extras.DictCursor)

    def select_techblog(self):
        postgreSQL_select_Query = "SELECT row_to_json(row) FROM (select * from public.project_techblog_stage where subject!='' limit 10) row"
        rows = self.select(postgreSQL_select_Query)
        rows2 = []
        for r in rows:
            rr = []
            for row in r:
                row["tags"] = row["subject"].split(', ')
                rr.append(row)
                rows2.append(row)
        return rows2

    def get_similar(self, project):
        postgreSQL_select_Query = f"""
        with t as (select * from public.similarity_csv where lower(name)=lower('{project}')),
        top as (select x.*
        from t, 
        jsonb_each_text(to_jsonb(t)) as x("key",value) where key!='name' 
        limit 4)
        SELECT row_to_json(row) FROM (
        select * from top
        left join public.sito_project on lower(title_en)=lower(key)
        order by value desc
        ) row
        """
        rows = self.select(postgreSQL_select_Query)
        rows2 = []
        for r in rows:
            rr = []
            for row in r:
                row["tags"] = ['tag1', 'tag2']
                row["type"] = 'sometype'
                rr.append(row)
                rows2.append(row)

        return rows2


    def select(self, postgreSQL_select_Query):
        cursor = self.connection.cursor()
        cursor.execute(postgreSQL_select_Query)
        rows = cursor.fetchall()

        return rows




pg: PG = None

def get_pg() -> PG:
    return pg


class ES:
    def __init__(self, host):
        self.host = host

    def search_in_es(self, search: str):
        res = requests.get(f'http://{self.host}:8087/search?q={search}')
        res = res.json()
        rr = []
        for r in res['hits']['hits']:
            a = r['_source']
            a['type'] = 'openedu'
            a['tags'] = ['wiki', 'community']
            rr.append(r['_source'])

        return rr


es: ES = None

def get_es() -> ES:
    return es