FROM python:3.10-slim

# set the working directory
WORKDIR /code

# install dependencies
COPY ./src ./src
RUN pip install --no-cache-dir --upgrade -r ./src/requirements.txt

# copy the src to the folder


# start the server
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]