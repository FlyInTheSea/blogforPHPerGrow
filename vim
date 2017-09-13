显示绝对行号 set number
取消显示绝对行号 set nonumber
显示相对行号 set relativenumber
取消显示相对行号 set norelativenumber

gu或者gU
小u意味着转为小写；大U意味着转为大写.
转换几行的大小写
将光标定位到想转换的行上，键入：1gU 从光标所在行 往下一行都进行小写到大写的转换
10gU，则进行11行小写到大写的转换
以此类推，就出现其他的大小写转换命令
gU0        ：从光标所在位置到行首，都变为大写
gU$        ：从光标所在位置到行尾，都变为大写
gUG        ：从光标所在位置到文章最后一个字符，都变为大写
gU1G      ：从光标所在位置到文章第一个字符，都变为大写
只转化某个单词
guw 、gue
gUw、gUe


修改ubuntu默认编辑器为vim 
一般情况下，ubuntu终端下的默认编辑器为nano，我们直接编辑某个文件，默认就会打开nano。比如我们输入“crontab -e“的时候默认会打开nano编辑器。 
对于熟悉VIM的朋友来说，都希望默认编辑器能使用vim，那么我们就需要修改ubuntu的默认编辑器。 
修改ubuntu默认编辑器有三种方法： 
一、直接在终端输入： 
echo export EDITOR=/usr/bin/vim >> ~/.bashrc 
二、使用系统管理工具update-alternatives来修改 
在终端输入： 
update-alternatives --config editor 
然后选择vim.basic这项即可 
三、如果系统中只剩下nano和vim两个编辑器，这个时候我们如果完全删除nano，那么系统会默认选择vim为默认编辑器 
在终端输入删除nano编辑器的命令： 
sudo apt-get remove nano 
修改完成之后我们输入： 
crontab -e 
看一看出现的是不是大家喜欢的vim编辑器呢。 




