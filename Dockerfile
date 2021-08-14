FROM python:3
WORKDIR /app/Backend/server
ADD requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3", "manage.py", "runserver","0.0.0.0:80"]