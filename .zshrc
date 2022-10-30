# 基本设置
source /etc/zsh/zshrc_base
# source /etc/zsh/zshrc_base2
# source /etc/zsh/zshrc_base3

# 配置终端代理
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890

# 引入插件
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# 取消代理
unset_proxy(){
	unset http_proxy
	unset https_proxy
	echo done~
}

# 快速生成 UUID
uuid(){python -c "import uuid;print(uuid.uuid4())"}


WORKDIR='/e/0xNoObWorkspace'
PTWORKDIR="$WORKDIR/PenetrationTest"
alias cd\~='cd $WORKDIR' 
alias cdp='cd $PTWORKDIR' 
alias sqlmap="python $PTWORKDIR/0xSanner/sqlmap/sqlmap.py"


# 快捷指令
burpsuite(){
  local BPWD="$PTWORKDIR/0xPacketCapture/BurpSuite_v2022.2.3"
  local cmd=$(
    cat <<EOF
java  \
--illegal-access=permit \
-Xmx8G \
-Djava.net.preferIPv4Stack=true \
-XX:-UseParallelGC \
-noverify \
--add-opens=java.desktop/javax.swing=ALL-UNNAMED \
--add-opens=java.base/java.lang=ALL-UNNAMED \
-javaagent:$BPWD/BurpSuiteLoader_v2022.2.3.jar  \
-Dfile.encoding=utf-8
EOF
  )
if [ "$1" = cn ];then
  cmd+=" -javaagent:$BPWD/BurpSuiteCnV2.0.jar"
fi
  bash -c "$cmd -jar $BPWD/burpsuite_pro_v2022.2.3.jar" >&/dev/null &
}

fofax(){
  cd $PTWORKDIR/0xInformationCollection/fofax
  ./fofax.exe
}

envactive(){
	local _active_env_path="$PWD/venv/Scripts/activate"
	if [ -f "$_active_env_path" ];then
		source "$_active_env_path"
    echo "activated $_active_env_path"
	fi
}
