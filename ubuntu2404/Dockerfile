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

# Define o usuário padrão
USER $USER

# Diretório de trabalho padrão
WORKDIR /home/$USER

# Comando padrão
CMD ["bash"]