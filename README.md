This project represents a proof of concept using a Logstash pipeline to populate an ElasticSearch index on a regular schedule with data sourced from Postgres.

This project is PURELY for learning purposes on localhost; passwords are embedded in the clear in the docker-compose, and therefore nothing should be deployed to a cloud instance.

# Running instructions

- Run `docker-compose -f docker-compose-v8.yml && docker-compose -f docker-compose-v8 up -d` to start the 2 ES nodes, Postgres, and Adminer (DB GUI web interface). Adminer is optional, just helpful for easily connecting to Postgres.
- Run `docker-compose -f docker-compose-kibana up -d` to start up Kibana
- Run `docker-compose -f docker-compose-logstash.yml && docker-compose -f docker-compose-logstash up -d` to start up Logstash. The Dockerfile has been customized to stay running, otherwise the container would run and exit on completion. A Logstash job can be run by connecting with `docker exec -it logstash /bin/bash` and then running `logstash -f pipeline/logstash.conf`
- Kibana can be used to query against the cluster and easily run queries using the dev console