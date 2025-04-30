# Use a imagem oficial do Ubuntu
FROM ubuntu:latest

# Define o usuário root
USER root

# Variáveis de ambiente
ENV DEBIAN_FRONTEND=noninteractive
ENV USER=ubuntu
ENV PASS=ubuntu


# Instalação de pacotes necessários
RUN apt-get update && \
    apt-get install -y sudo passwd nmap ssh net-tools htop iputils-ping \
    iproute2 curl iperf3 mtr socat tcpdump telnet dnsutils traceroute vim iptables && \
    rm -rf /var/lib/apt/lists/*

# Copia as regras do iptables e o script de inicialização
COPY iptables.sh /etc/iptables/rules.v4
COPY start.sh /start.sh

# Permissões de execução
RUN chmod +x /start.sh

# Diretório de trabalho padrão
WORKDIR /root

# Usa o script como ponto de entrada
ENTRYPOINT ["/start.sh"]
