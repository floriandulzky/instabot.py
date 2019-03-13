FROM python:3.7

WORKDIR /app

COPY . .

RUN pip3.7 install --no-cache-dir -r ./requirements/base.txt
RUN pip3.7 install --no-cache-dir -r ./requirements/ci.txt
RUN pip3.7 install --no-cache-dir -r ./requirements/tests.txt

CMD [ "python", "example.py" ]
