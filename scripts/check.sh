#!/bin/bash

echo "===== 检查时间: $(date) ====="

echo ""
echo "【1. 服务状态检查】"
systemctl status nginx | head -n 5

echo ""
echo "【2. 日志检查】"
tail -n 5 /var/log/nginx/error.log

echo ""
echo "【3. 连通性检查】"
curl -I http://localhost

echo ""
echo "===== 检查结束 ====="
