# wget -N --no-check-certificate https://softs.fun/Bash/ssr.sh && chmod +x ssr.sh && bash ssr.sh
Error="${Red_font_prefix}[错误]${Font_color_suffix}"

cd "/usr/local/"
wget -N --no-check-certificate "https://github.com/Paranea-TM/vps/archive/master.zip"
[[ ! -e "vps-master.zip" ]] && echo -e "${Error} ShadowsocksR可执行脚本 下载失败 !" && rm -rf vps-master.zip && exit 1
unzip "vps-master.zip"
[[ ! -e "/usr/local/vps-master/" ]] && echo -e "${Error} ShadowsocksR可执行脚本 解压失败 !" && rm -rf vps-master.zip && exit 1
mv "/usr/local/vps-master/" "/usr/local/vps/"
