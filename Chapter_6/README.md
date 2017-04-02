###### Makefile格式：
###### target: dependancy1 dependancy2...
###### 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command (command which will generate 'target' from 'dependancy1', 'dependancy2', ...)
###### 命令行执行"make target"即可，如果不带target，默认指定Makefile中的第一个target

###### $^代表target文件的所有dependancy文件
###### $<代表第一个dependancy文件
###### $@代表target文件
 
