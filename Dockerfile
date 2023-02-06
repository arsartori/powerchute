FROM ubuntu:22.04
LABEL maintainer="Andre Sartori <aph@aph.dev.br>"
RUN apt-get update && apt-get install curl -y && apt-get clean
WORKDIR /tmp
RUN curl -o pcns441Linux-x86-64.tar.gz "https://download.schneider-electric.com/files?p_enDocType=Software+-+Release&p_File_Name=pcns441Linux-x86-64.tar.gz"
RUN tar zxvf pcns*.tar.gz && rm pcns*.tar.ga
ADD silentInstall.sample /tmp/z
WORKDIR /tmp/Linux_x64
RUN chmod +x install.sh && ./install.sh –f /tmp/silentInstall.sample
EXPOSE 80 443
CMD ["/opt/tomcat/bin/catalina.sh","run"]
