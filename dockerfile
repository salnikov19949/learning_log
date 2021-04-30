FROM python:latest

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
ADD /home/tony/projects/learning_log /usr/src/app

EXPOSE 9095
CMD ["python", "manage.py", "runserver", "0.0.0.0:9095"]
