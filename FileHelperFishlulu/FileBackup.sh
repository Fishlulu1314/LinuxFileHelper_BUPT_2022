#!/bin/bash

#实现文件备份功能,包含简单UI,包含以下选项
#1:备份->传入文件目录,并将目录下所有文件备份到指定目录 
#2:恢复->传入备份文件目录,并将备份文件恢复到指定目录,可以不做这个功能
#3:退出,并返回到文件助手主界面

#可供参考的代码


# # 需求：对重要数据进行归档备份，输入一个目录的名称。末尾不带/，将目录下面所有文件按天归档保存，并将归档日期附加在归档文件名上面，放在/root/archive 下面
# #归档命令 tar -c 表示归档 -z 表示同时进行压缩，后缀为.tar.gz
# #参数：$1：目录名称 $2：归档目录位置，默认放在/root/archive 下面
# #判断函数是否可以使用
# #判断是否输入了目录名称，参数是否大于 2

# #test

# if [ $# -ge 2 ] || [ $# -eq 0 ]; then
#     echo "参数个数错误，应当输入第一个参数作为要归档的目录名，第二个参数作为归档文件存放目录"
#     exit #结束当前函数
# fi

# #从参数中获取目录名称
# if [ -d "$1" ]; then
#     dir="$1"
# else
#     echo "目录不存在"
#     exit
# fi
# DIR_NAME=$(basename "$dir")
# DIR_PATH=$(cd $(dirname $1); pwd)

# #判断归档目录第二个参数是否存在，不存在则默认为/root/archive,
# if [ -z "$2" ]; then
#     DEST_DIR="/root/archive"
#     if [ ! -d $DEST_DIR ]; then
#         mkdir $DEST_DIR
#     fi
#     echo "默认存放在了$DEST_DIR"
# elif [ -d "$2" ]; then
#     DEST_DIR="$2"
# else
#     echo "归档目录不存在"
#     exit
# fi
# #归档文件名字
# #获取当前日期
# DATE=$(date +%y%m%d)
# #定义生成的归档文件名称
# FILE_NAME="archive_${DIR_NAME}_${DATE}.tar.gz"
# #归档文件的完整路径
# DEST=$DEST_DIR/$FILE_NAME
# echo "开始归档"
# #用绝对路径归档
# echo
# tar -czf $DEST $DIR_PATH/$DIR_NAME
# if [ $? -eq 0 ]; then
#     echo
#     echo "归档成功"
#     echo "归档文件为 : $DEST"
#     echo
# else
#     echo "归档失败"
#     echo
# fi
# exit
