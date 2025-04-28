## 🗃 Роль `database`: Установка и настройка СУБД и клиентов

Эта роль обеспечивает гибкую установку реляционных баз данных и сопутствующих инструментов с возможностью выбора компонентов через переменные.

### 📌 Основные возможности:

- **Клиенты БД** (опционально):
  - PostgreSQL (`postgresql-client`)
  - MySQL (`mysql-client`)
  - SQLite (`sqlite3`)

- **Серверные компоненты** (опционально):
  - PostgreSQL Server
  - MySQL Server

- **Графические инструменты**:
  - phpMyAdmin (для MySQL)
  - DBeaver CE (универсальный клиент через Snap)

- **Автоматический запуск**:
  - Активация и старт служб для установленных серверов

### ⚙️ Переменные управления (group_vars/main.yml):

```yaml
# Клиенты
install_postgresql_client: true
install_mysql_client: true
install_sqlite: true

# Серверы
install_postgresql_server: false
install_mysql_server: false

# GUI инструменты
install_phpmyadmin: false
install_dbeaver: true
