This project represents a proof of concept using a Logstash pipeline to populate an ElasticSearch index on a regular schedule with data sourced from Postgres.

As of this writing, the input to the pipeline is functional but outputting to ElasticSearch is under work.

This project is PURELY for learning purposes on localhost; passwords are embedded in the clear in the docker-compose, and therefore nothing should be deployed to a cloud instance.
