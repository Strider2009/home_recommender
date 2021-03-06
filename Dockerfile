FROM python:2.7-stretch

WORKDIR /home_recommender

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./app ./app
CMD ["python", "./app/rightmove_scraper.py"]