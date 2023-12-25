# Как развернуть сервер
На системе должны быть предварительно установлены git, docker, docker-compose, cron

# UFW docker issue (additional)
echo '{ "iptables" : false }' > /etc/docker/daemon.json
systemctl restart docker.service

## Команды для запуска приложения
1) git clone https://github.com/itomilin/satel_task.git && cd satel_task
2) cd ./docker
3) docker-compose up -d

# Как сделать бекап

Предварительно находиться в корне загруженного проекта, затем выолнить команду:
1) ./scripts/restore_flask_app_db.sh

# Как восстановить бекап

Предварительно находиться в корне загруженного проекта, затем выполнить команду:

Если контейнер запущен, то остановить:
1) cd ./docker
2) docker-compose down

Если не запущен выполняем команды:
1) ./scripts/restore_flask_app_db.sh <path_to_backup>
2) cd ./docker
3) docker-compose up -d

Ex. ./scripts/restore_flask_app_db.sh ./backups/backup_db_11-13-59.tar.gz


# CHANGE SSH DEFAULT PORT
change entry ```Port X``` within /etc/ssh/sshd_config
vim /etc/ssh/sshd_config
systemctl restart sshd.service

# RESTRICT PORTS

```
ufw allow 2222 # rules
ufw allow 80
ufw allow 443


ufw show added # to check

ufs enable # enable

ufw status
```
