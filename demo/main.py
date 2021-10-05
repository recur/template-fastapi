from fastapi import FastAPI
from mangum import Mangum

app = FastAPI(
    title="demo",
)


@app.get("/hello")
def hello():
    """
    Say hello.
    """
    return {"hello": "world"}


handler = Mangum(app, enable_lifespan=False)
