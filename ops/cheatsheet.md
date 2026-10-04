# ops cheatsheet

## quick commands

    du -sh * | sort -h | tail -20
    journalctl -fu myservice

## nginx websocket proxy

    location /ws/ {
        proxy_pass http://127.0.0.1:8080;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
    }
