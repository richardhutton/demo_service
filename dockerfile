FROM python:3.13-slim

WORKDIR /app

# Use pre-built Poetry image
RUN pip install "poetry==1.8.4"

COPY pyproject.toml poetry.lock* /app/

RUN poetry config virtualenvs.create false && poetry install --no-dev

COPY . /app/

EXPOSE 8000

CMD ["poetry", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

