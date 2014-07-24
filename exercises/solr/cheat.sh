#!/bin/sh

solrctl instancedir --generate solr_configs

solrctl instancedir --create collection1 solr_configs

solrctl instancedir --list

solrctl collection --create collection1 -s 1

solrctl collection --list

cd exampledocs

java -Durl=http://localhost:8983/solr/collection1/update -jar post.jar *.xml


