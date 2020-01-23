FROM docker.elastic.co/elasticsearch/elasticsearch:7.5.1

RUN elasticsearch-plugin install analysis-kuromoji \
  && elasticsearch-plugin install analysis-icu

ADD dic /usr/share/elasticsearch/config/dic
