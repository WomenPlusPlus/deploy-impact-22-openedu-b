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

    def select(self):
        cursor = self.connection.cursor()
        postgreSQL_select_Query = "SELECT row_to_json(row) FROM (select * from public.project_techblog_stage where subject!='' limit 10) row"

        cursor.execute(postgreSQL_select_Query)
        print("Selecting rows from mobile table using cursor.fetchall")
        rows = cursor.fetchall()
        rows2=[]
        for r in rows:
            rr = []
            for row in r:
                row["tags"] = row["subject"].split(', ')
                rr.append(row)
                rows2.append(row)

        return rows2


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