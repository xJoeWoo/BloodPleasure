## 服务器配置
1. 安装 MySQL 或 MariaDB，默认数据库名为 `bloodpleasure`，运行 `database.sql` 
2. MQTT
   1. 从 https://mosquitto.org/download/ 获得并安装 Mosquitto MQTT 服务器
   2. 参考 `/etc/mosquitto/aclfile.example` 和 https://jaimyn.com.au/mqtt-use-acls-multiple-user-accounts/ ，创建 MQTT 用户并配置启用 ACL 文件


