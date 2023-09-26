from fastapi import FastAPI
#import redis

#r = redis.Redis(host="redis", port=6379)
app = FastAPI()

#import debugpy

#debugpy.listen(('127.0.0.1', 5678))
#print("Waiting for client to attach...")
#debugpy.wait_for_client()

@app.get("/")
def read_root():
    return {"Thank":"you!"}

@app.get("/hits")
def read_root():
    r.incr("hits")
    return {"Number of hits:": r.get("hits")}
