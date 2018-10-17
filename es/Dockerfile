FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.4

# install
RUN elasticsearch-plugin install analysis-kuromoji
RUN elasticsearch-plugin install analysis-icu
# RUN elasticsearch-plugin install x-pack