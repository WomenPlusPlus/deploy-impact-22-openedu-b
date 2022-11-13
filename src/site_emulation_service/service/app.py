from concurrent.futures.process import ProcessPoolExecutor

from fastapi import FastAPI, APIRouter, Request, Depends, Form
from fastapi.responses import RedirectResponse
from fastapi.responses import ORJSONResponse
from typing import Union
from pathlib import Path
from service.config import ES_HOST, PG_HOST, PG_PORT,APP_HOST

from service import storage
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
    storage.pg = storage.PG(host=PG_HOST, port=PG_PORT, user='postgres', db='openedub', password='vfifif')
    storage.pg.connect()
    storage.es = storage.ES(host=ES_HOST)

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

@api_router.get("/moderator", status_code=200)
def root(request: Request, pg: storage.PG = Depends(storage.get_pg)) -> dict:  # 2
    """
    Root GET
    """
    data = pg.select_techblog()
    return TEMPLATES.TemplateResponse(
        "moderator.html",
        {"request": request, "projects": data, "app_host": APP_HOST},
    )

@api_router.get("/", status_code=200)
def root(request: Request) -> dict:  # 2
    """
    Root GET
    """

    return TEMPLATES.TemplateResponse(
        "index.html",
        {"request": request, "app_host": APP_HOST},
    )

@api_router.get("/search", status_code=200)
def root(request: Request, q: Union[str, None] = None, es: storage.ES = Depends(storage.get_es)) -> dict:  # 2
    """
    Root GET
    """
    data = es.search_in_es(q)
    return TEMPLATES.TemplateResponse(
        "search.html",
        {"request": request, "projects": data, "app_host": APP_HOST},
    )


@app.post("/search")
def edit_bom(search: str = Form(...)):
    print(search)

    return RedirectResponse(url=f"/search?q={search}", status_code=303)

@api_router.get("/card", status_code=200)
def root(request: Request, id: Union[str, None] = None, pg: storage.PG = Depends(storage.get_pg)) -> dict:  # 2
    """
    Root GET
    """
    data = pg.get_similar(id)
    return TEMPLATES.TemplateResponse(
        "card.html",
        {"request": request, "projects": data, "app_host": APP_HOST},
    )

app.include_router(api_router)