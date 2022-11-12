import os

ES_HOST = os.getenv('ES_HOST', 'localhost')
PG_HOST = os.getenv('PG_HOST', 'localhost')
PG_PORT = os.getenv('PG_PORT', 2345)