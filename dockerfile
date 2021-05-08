FROM python:latest

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/tony/projects/learning_log
COPY requirements.txt ./
RUN pip install -r requirements.txt
ADD /home/tony/projects/learning_log /usr/
RUN cd /usr/learning_log
EXPOSE 9095
CMD ["python", "manage.py", "runserver", "9095"]
