#!/usr/bin/env bash

# Limpa regras existentes
iptables -F
iptables -X

# Política padrão: negar entrada, permitir saída
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Permitir loopback
iptables -A INPUT -i lo -j ACCEPT

# Permitir conexões já estabelecidas
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Permitir entrada nas portas 22 (SSH) e 80 (HTTP)
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Fica em loop para manter o container vivo e visualizar regras
echo "Regras aplicadas. Container ativo."
iptables -L -n -v
tail -f /dev/null
