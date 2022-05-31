FROM nginx

RUN apt update 
RUN apt install nano -y

WORKDIR /usr/share/nginx/html
COPY ./www . 

