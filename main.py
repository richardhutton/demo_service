from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
  return {"message": "You suck"}


@app.get("/health")
def health_check():  
  return {"message": "Health"}
