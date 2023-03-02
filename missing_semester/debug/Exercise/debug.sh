#/bin/bash

#######获取最近一天中超级用户的登录信息及其所执行的指令######

 journalctl | grep "sudo"
