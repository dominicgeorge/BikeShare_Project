# pull python base image
FROM python:3.10-slim

# specify working directory
WORKDIR /bike_sharing_api

# copy application files into the container
COPY bike_sharing_api/ .

# update pip
RUN pip install --upgrade pip

# install dependencies
RUN pip install -r requirements.txt

# expose port for application
EXPOSE 8001

# start fastapi application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8001"]