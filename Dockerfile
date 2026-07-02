FROM python:3.10-alpine

WORKDIR /usr/src/app

COPY --chmod=755 backend.py .

RUN pip install mysql-connector-python fastapi[standard]
EXPOSE 8000

CMD ["uvicorn", "backend:app", "--host", "0.0.0.0", "--port", "8000", "--log-level", "debug"]