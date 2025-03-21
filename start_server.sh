#!/bin/bash

echo "启动AR UPI需求文档服务器..."
echo "请在浏览器中访问: http://localhost:8000/ar_upi_docs_index.html"
echo "按Ctrl+C可以停止服务器"
echo "===================================="

# 检查Python版本并启动适当的HTTP服务器
if command -v python3 &>/dev/null; then
    python3 -m http.server 8000
elif command -v python &>/dev/null; then
    # 检查Python版本
    python_version=$(python -c 'import sys; print(sys.version_info[0])')
    if [ "$python_version" -eq 3 ]; then
        python -m http.server 8000
    else
        python -m SimpleHTTPServer 8000
    fi
else
    echo "错误: 未找到Python。请安装Python或手动打开ar_upi_docs_index.html文件。"
    exit 1
fi 