FROM python:latest

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/tony/projects/learning_log
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY learning_log ./
COPY learning_logs ./
COPY ll_env ./
COPY manage.py ./
COPY Procfile ./
COPY runtime.txt ./
copy users ./
copy db.sqlite3 ./
EXPOSE 9095
CMD ["python", "manage.py", "runserver", "9095"]
