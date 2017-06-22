1. redis-cli 中输入 `config set requirepass password` 即可设置数据库密码
2. redis-cli 中输入 `config get dir` 即可获取数据库文件位置
3. 在终端输入 `redis-cli shutdown` 可关闭redis-cli
4. ubuntu下关闭、开启和重启redis-server的命令
```
/etc/init.d/redis-server stop
/etc/init.d/redis-server start
/etc/init.d/redis-server restart
```
