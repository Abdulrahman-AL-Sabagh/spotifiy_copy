FROM node:18.0-bullseye
RUN mkdir app
WORKDIR /spotifiy_copy
COPY ./spotifiy_copy /spotifiy_copy/
RUN ls
RUN npm install
CMD [ "npm","run","dev" ]