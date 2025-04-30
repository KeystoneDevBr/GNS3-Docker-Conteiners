# Use a imagem oficial do Ubuntu
FROM ubuntu

# Define variáveis de ambiente para usuário e senha
ENV USER=ubuntu
ENV PASS=ubuntu

# Evita prompts interativos durante a instalação
ENV DEBIAN_FRONTEND=noninteractive

# Instala todos os pacotes de uma vez (de forma eficiente)
RUN apt-get update && \
    apt-get install -y sudo passwd nmap ssh net-tools htop iputils-ping \
    iproute2 curl iperf3 mtr socat tcpdump telnet dnsutils traceroute vim iptables && \
    rm -rf /var/lib/apt/lists/*

# Script para configurar iptables
COPY iptables.sh /etc/iptables/rules.v4
RUN chmod +x /etc/iptables/rules.v4

COPY interfaces /etc/network/interfaces
RUN chmod 644 /etc/network/interfaces

# Define o usuário padrão
USER root

# Diretório de trabalho padrão
WORKDIR /root

# Comando padrão
CMD ["bash"]