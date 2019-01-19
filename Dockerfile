FROM python:2-slim

RUN pip install shodan

WORKDIR /

COPY  mattershodan.py mattershodan.py

ENTRYPOINT ["python", "mattershodan.py"]
EXPOSE 8088
