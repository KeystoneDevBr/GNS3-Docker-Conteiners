# Use a imagem oficial do Ubuntu 24.04
FROM ubuntu:24.04

# Define variáveis de ambiente para usuário e senha
ENV USER=ubuntu
ENV PASS=ubuntu

# Evita prompts interativos durante a instalação
ENV DEBIAN_FRONTEND=noninteractive

# Instala todos os pacotes de uma vez (de forma eficiente)
RUN apt-get update && \
    apt-get install -y sudo passwd nmap ssh net-tools htop iputils-ping \
    host traceroute dnsutils psmisc nano && \
    rm -rf /var/lib/apt/lists/*

# Cria o usuário e define a senha
# RUN useradd -m -s /bin/bash $USER && \
#    echo "$USER:$PASS" | chpasswd && \
#    usermod -aG sudo $USER

# Define o usuário padrão
USER $USER

# Diretório de trabalho padrão
WORKDIR /home/$USER

# Comando padrão
CMD ["bash"]