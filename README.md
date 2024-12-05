# ClusterChat
集群聊天

# 环境配置
# redis mysql nginx

## nginx 负载均衡
- 配置```usr/local/nginx/conf/nginx.conf```
```
# nginx tcp loadbalance config
stream {
    upstream MyServer {  # 负责均衡模块，这里两台服务器
        server 127.0.0.1:6000 weight=1 max_fails=3 fail_timeout=30s;
        server 127.0.0.1:6002 weight=1 max_fails=3 fail_timeout=30s;
    }

    server {
        proxy_connect_timeout 1s;
        listen 8000;  # nginx listen port
        proxy_pass MyServer;  # 所有连接到8000端口上的都往MyServer里进行负载均衡
        tcp_nodelay on;
    }
}
```

./autobuild.sh