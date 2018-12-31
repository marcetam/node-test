## Specifies the base image we're extending
FROM node:9

## Create base directory
RUN mkdir /opt/app

## Specify the "working directory" for the rest of the Dockerfile
WORKDIR /opt/app

## Add application code
COPY ./app /opt/app
COPY ./public /data

## Allows port 3000 to be publicly available
EXPOSE 3000

## The command uses nodemon to run the application
CMD ["/usr/local/bin/node", "/opt/app/index.js"]
