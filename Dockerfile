FROM node:latest
WORKDIR /app
COPY package.json /app
ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
       then npm install; \
       else npm install --only-production; \
    fi
   
COPY . /
EXPOSE 3000
CMD  [ "node","index.js"]

