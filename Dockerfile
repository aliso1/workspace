FROM UBUNTU:14.04

RUN apt-get update
RUN apt-get upgrade -y

RUN sudo add-apt-repository -y ppa:webupd8team/java
RUN sudo apt-get -y install oracle-java8-installer elasticsearch kibana nginx apache2-utils logstash

RUN wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - \
	echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list \
	echo "deb http://packages.elastic.co/kibana/4.5/debian stable main" | sudo tee -a /etc/apt/sources.list.d/kibana-4.5.x.list \
	echo 'deb http://packages.elastic.co/logstash/2.2/debian stable main' | sudo tee /etc/apt/sources.list.d/logstash-2.2.x.list \





ADD cherche_usb.sh /app/

CMD /app/reprog.sh


WORKDIR /test/elk/
