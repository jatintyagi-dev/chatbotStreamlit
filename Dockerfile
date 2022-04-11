FROM python:3.8
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8501
COPY . /app
WORKDIR /app
ENTRYPOINT ["streamlit","run"]
CMD app.py
