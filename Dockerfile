FROM python:3.11.5-alpine3.18

# set the working directory
WORKDIR /code

COPY requirements.txt requirements.txt

# install dependencies
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copy src
COPY ./src ./src

EXPOSE 80

# start the server
CMD ["uvicorn", "src.main:app", "--host", "localhost", "--port", "80", "--reload"]