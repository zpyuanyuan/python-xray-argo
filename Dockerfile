FROM python:3.10-alpine

COPY main.py /app/
WORKDIR /app


EXPOSE 3000

RUN apk update && apk --no-cache add openssl bash curl &&\
    chmod +x app.py &&\
    pip install -r requirements.txt
    
CMD ["python3", "app.py"]
