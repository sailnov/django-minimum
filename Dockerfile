FROM python:3.9-bullseye

WORKDIR /app

ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
# clone the repo from github
RUN git clone https://github.com/sailnov/django-minimum.git

WORKDIR /app/django-minimum

# install the requirements
RUN pip install --upgrade pip
RUN ls -a
RUN pip install -r requirements.txt --no-cache-dir

# copy the project files
EXPOSE 8000

# run the server
CMD ["python", "hello.py", "runserver", "0.0.0.0:8000"]
