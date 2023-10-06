#!/bin/bash

#文件助手主界面,通过该界面来调用其他的脚本,目前打算支持实现文件传输和备份和功能
#脚本可直接通过命令 fhelper 来调用

function mainUI() {

    echo -e "==========欢迎使用文件助手==========\n1.文件传输助手\n2.文件备份助手\n3.关于\n4.退出\n请输入您的选择："
    read -r option
    case $option in
    1)
        source ./FileTransfer.sh
        if [ $? != 0 ]; then
            mainUI
        fi
        ;;
    2)
        source ./FileBackup.sh
        if [ $? != 0 ]; then
            mainUI
        fi
        ;;
    3)
        #测试版本号0.1.0
        version="0.1.0"
        echo -e "\n\n*********Shell文件助手********* \n\nV${version} 2023.10.5\n\n开发人员：\n禄禄鱼  艾俊波  涂珉铢  孙明睿  文思捷\n\n"
        mainUI
        ;;
    4)
    echo "感谢使用~"
        return
        ;;
    *)
        echo "输入非法字符,请重新输入"
        mainUI
        ;;
    esac
}

#转移到脚本所在目录
script_dir=$(dirname "$(realpath "$0")")
cd "$script_dir" || exit
mainUI