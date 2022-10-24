#!/bin/bash
cp -r zsh-5.9-1-x86_64.pkg /
cp zshrc_base* /etc/zsh
cp -r zsh-syntax-highlighting /usr/share/
cp -r zsh-autosuggestions /usr/share/
# 写入配置文件
cat >>~/.zshrc<<EOF
# 基本设置
source /etc/zsh/zshrc_base
# source /etc/zsh/zshrc_base2
# source /etc/zsh/zshrc_base3

# 配置终端代理
# export http_proxy=http://127.0.0.1:7890
# export https_proxy=http://127.0.0.1:7890

# 引入插件
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
EOF

# 自动进入zsh
cat >>/etc/bash.bashrc<<EOF
# 自动进入zsh
if [ -t 1 ]; then
  exec zsh
fi
EOF

source /etc/bash.bashrc