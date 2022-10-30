#!/bin/bash
cp -r zsh-5.9-1-x86_64.pkg/* /
cp zshrc_base* /etc/zsh
cp -r zsh-syntax-highlighting /usr/share/
cp -r zsh-autosuggestions /usr/share/
# 写入配置文件

cp .zshrc ~


# 自动进入zsh
cat >>/etc/bash.bashrc<<EOF
# 自动进入zsh
if [ -t 1 ]; then
  exec zsh
fi
EOF

zsh