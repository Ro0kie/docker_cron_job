## how to use

write command in    ***script.sh***

then    ***docker-compose up -d --build***

the default cron setting is * * * * * , run ***script.sh*** every minute

if you want to modify , you can change it in ***crontab***

## tips

if your command is like  ***curl http://127.0.0.1:5421/hello***

you have to add ***apt install -y curl*** in ***Dockerfile***