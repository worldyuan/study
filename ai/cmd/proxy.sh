#!/bin/bash

# 代理报错
pip install PySocks requests[socks] httpx[socks]
export all_proxy=socks5h://127.0.0.1:7890
export ALL_PROXY=socks5h://127.0.0.1:7890
