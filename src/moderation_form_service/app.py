from concurrent.futures.process import ProcessPoolExecutor

from fastapi import FastAPI, APIRouter, Query, HTTPException, Request, Depends
from fastapi.responses import ORJSONResponse
from pathlib import Path

from fastapi.staticfiles import StaticFiles
import storage
from fastapi.templating import Jinja2Templates



app = FastAPI(
    title='moderation_form',
    docs_url=f"/moderation_form/swagger",
    redoc_url=None,
    openapi_url=f"/moderation_form/api/openapi.json",
    default_response_class=ORJSONResponse,
)


@app.on_event("startup")
async def startup():
    """
    On API startup create DB connection, and other objects
    :return:
    """
    storage.pg = storage.PG(host='localhost', port=2345, user='postgres', db='openedub', password='vfifif')
    storage.pg.connect()
    app.state.executor = ProcessPoolExecutor()


@app.on_event("shutdown")
async def shutdown():
    """
    On API shutdown close DB connections
    :return:
    """
    app.state.executor.shutdown()


BASE_PATH = Path(__file__).resolve().parent
TEMPLATES = Jinja2Templates(directory=str(BASE_PATH / "templates"))

PROJECTS = [{
        "id": 1,
        "title": "Wiki Project",
        "content": "Some text",
        "url": "http://www.seriouseats.com/recipes/2011/12/chicken-vesuvio-recipe.html",
    "tags": ["wiki", "skill1", "edu"]
    },]


api_router = APIRouter()

@api_router.get("/", status_code=200)
def root(request: Request, pg: storage.PG = Depends(storage.get_pg)) -> dict:  # 2
    """
    Root GET
    """
    data = pg.select()
    return TEMPLATES.TemplateResponse(
        "index.html",
        {"request": request, "projects": data},
    )

app.include_router(api_router)