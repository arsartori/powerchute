FROM ubuntu:22.04
LABEL maintainer="Andre Sartori <aph@aph.dev.br>"
RUN apt-get update && apt-get install curl -y && apt-get clean
WORKDIR /tmp
#RUN curl -o pcns441Linux-x86-64.tar.gz "https://download.schneider-electric.com/files?p_enDocType=Software+-+Release&p_File_Name=pcns441Linux-x86-64.tar.gz"
COPY files/pcns441Linux-x86-64.tar.gz .
RUN tar zxvf pcns*.tar.gz && rm pcns*.tar.gz
WORKDIR /tmp/Linux_x64
COPY conf/silentInstall.sample .
#RUN ./install.sh -f silentInstall.sample
EXPOSE 80 443 6547
#CMD ["start_powerchute.sh"]
