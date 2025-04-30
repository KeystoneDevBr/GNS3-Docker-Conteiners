#!/usr/bin/env bash

# Restaura as regras de iptables
if [ -f /etc/iptables/rules.v4 ]; then
    echo "Restaurando regras do iptables..."
    iptables-restore < /etc/iptables/rules.v4
else
    echo "Arquivo de regras /etc/iptables/rules.v4 não encontrado."
fi

# Inicia um shell interativo
exec bash
