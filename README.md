# zsh-config
## zsh 快速配置，不安装 ohmyzsh
## 使用方法
```sh
# 记得加上 --recursive
git clone --recursive https://github.com/rexSurprise/zsh-config.git
# 如果克隆时忘记加 --recursive 可以执行下面这条命令
git submodule update --init --recursive
```

```sh
# 基本设置 (将本仓库的zshrc_base放到下面的路径)
# 也可以指定为 .zshrc-2/.zshrc-3
source /etc/zsh/zshrc_base
# source /etc/zsh/.zshrc-2
# source /etc/zsh/.zshrc-3

# 自动设置代理
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890

# 插件引入 (将本仓库的 zsh-syntax-highlighting 和 zsh-autosuggestions 放到下面的路径)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
```
