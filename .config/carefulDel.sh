#!/bin/bash

# 获取要删除的文件列表
files=("$@")
num_files=${#files[@]}

# 显示文件数量
echo "将删除 $num_files 个文件："

# 显示文件列表，最多显示 15 个
max_display=15
for ((i=0; i<num_files; i++))
do
  if ((i < max_display))
  then
    echo "${files[i]}"
  else
    echo "..."
    break
  fi
done

# 确认信息
read -p "确认要删除这些文件吗？[Y/N]: " choice
if [[ $choice == "Y" || $choice == "y" ]]
then
  # 调用 rm 命令删除文件
  rm "${files[@]}"
  echo "文件已删除"
else
  echo "取消删除"
fi

