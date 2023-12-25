# Как развернуть сервер
На системе должны быть предварительно установлены git, docker, docker-compose, cron

## Команды для запуска приложения
1) git clone https://github.com/itomilin/satel_task.git && cd satel_task
2) cd ./docker
3) docker-compose up -d

# Как сделать бекап

Предварительно находиться в корне загруженного проекта, затем выолнить команду:
1) ./scripts/restore_flask_app_db.sh

# Как восстановить бекап

Предварительно находиться в корне загруженного проекта, затем выполнить команду:
1) ./scripts/restore_flask_app_db.sh <path_to_backup>

Ex. ./scripts/restore_flask_app_db.sh ./backups/backup_db_11-13-59.tar.gz

