from typing import Optional

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


class Item(BaseModel):
    name: str
    price: float
    is_offer: Optional[bool] = None

class Fighter(BaseModel):
    first_name: str
    last_name: str


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/show")
def get_winner(fighter_a: str, fighter_b: str):
    return {"winner": fighter_a}

@app.post("/create")
def create_fighter(fighter: Fighter):
    return fighter

@app.get("/names")
def show_names():
    file1 = open('names.txt', 'r', newline='\n')
    names = file1.readlines()
    return names


