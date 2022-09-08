第一次启动　ranger 会创建一个目录 ~/.config/ranger/。可以使用以下命令复制默认配置文件到这个目录:

$ ranger --copy-config=all
了解一些基本的 python 知识可能对定制 ranger 会有帮助。

rc.conf - 选项设置和快捷键
commands.py - 能通过 : 执行的命令
rifle.conf - 指定不同类型的文件的默认打开程序。
scope.sh - 文件预览相关配置
rc.conf 只需要包含与默认配置文件不同的部分, 因为它们都会被加载。对于 commands.py，如果你没有包含整个文件，把下面这一行加入到文件起始处：

from ranger.api.commands import *
