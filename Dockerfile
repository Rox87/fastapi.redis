FROM python:3.10-slim

# set the working directory
WORKDIR /code

# Copy src
COPY ./src ./src

# install dependencies
RUN pip install --no-cache-dir --upgrade -r ./src/requirements.txt

# start the server
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]