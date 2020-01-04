# To get the latest version of images list you can look
#  https://www.docker.elastic.co/
# 
# Copyright (c) Vybhava Technologies and affiliates. All rights reserved.
# This is made for learning purpose of elasticsearch and Kibana quickly created and run the docker containers to access 
# 
# adding latest version image
FROM  docker.elastic.co/elasticsearch/elasticsearch:7.5.1

# Now install the elasticsearch-plugins analysis-kurmoji, analysis-icu
RUN elasticsearch-plugin install analysis-kuromoji
RUN elasticsearch-plugin install analysis-icu
