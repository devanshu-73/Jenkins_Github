FROM python:latest
WORKDIR /app
COPY Test_Git_Hub.py /app/Test_Git_Hub.py
CMD ["python", "Test_Git_Hub.py"]


FROM python:latest

WORKDIR /app
COPY Test_Git_Hub.py /app/

CMD ["python", "Test_Git_Hub.py"]
