
FROM python:3.12-slim

WORKDIR /app

ADD requirements.txt .
RUN pip3 install -r requirements.txt
ADD streamlit_app.py .

EXPOSE 8080

ENTRYPOINT ["streamlit", "run", "streamlit_app.py", "server.enableCORS=false", "--server.port=8080", "--server.address=0.0.0.0"]
