#!/usr/bin/env bash
docker run --name my-database  --rm  -e POSTGRES_PASSWORD=password -p 5432:5432 my-database
