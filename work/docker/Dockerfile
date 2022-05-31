FROM postgres:14-bullseye
RUN echo "Hello 3BHITM" > 3bhitm.txt


COPY import.sql docker-entrypoint-initdb.d/
#CMD ["cat","3bhitm.txt"]
