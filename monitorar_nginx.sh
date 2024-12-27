#!/bin/bash

DATA=$(date '+%Y-%m-%d %H:%M:%S')
SERVICO="nginx"
STATUS=$(systemctl is-active $SERVICO)

if [ "$STATUS" = "active" ]; then
    MENSAGEM="ONLINE"
    echo "$DATA | $SERVICO | $STATUS | Serviço está rodando" >> ~/monitoramento/nginx/online.log
else
    MENSAGEM="OFFLINE"
    echo "$DATA | $SERVICO | $STATUS | Serviço está parado" >> ~/monitoramento/nginx/offline.log
fi
chmod +x ~/monitoramento/monitorar_nginx.sh
crontab -e
*/5 * * * * ~/monitoramento/monitorar_nginx.sh
