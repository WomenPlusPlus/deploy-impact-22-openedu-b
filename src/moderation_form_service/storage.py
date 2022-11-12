import psycopg2
import psycopg2.extras

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
