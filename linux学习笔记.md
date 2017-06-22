### 用过的命令

1. locate

  locate命令用于查找文件，它比find命令的搜索速度快，它需要一个数据库，这个数据库由每天的例行工作（crontab）程序来建立。当我们建立好这个数据库后，就可以方便地来搜寻所需文件了。

  即先运行：updatedb（无论在那个目录中均可，可以放在crontab中 ）后在   /var/lib/slocate/ 下生成 slocate.db 数据库即可快速查找。在命令提示符下直接执行#updatedb 命令即可：

  例如：查找相关字issue
```
  $ locate issue

  /etc/issue

  /etc/issue.net

  /usr/man/man5/issue.5

  /usr/man/man5/issue.net.5
  ```

2. netstat

  用于显示各种网络相关信息
  常用其查看端口占用情况
  ```
  $ netstat -apn
  ```
  显示所有端口，可与grep连用，过滤所要查询的端口占用

3. kill

  杀死进程，强制杀死加`-9`

4. tmux 是一个非常好用的终端复用工具. [tmux比较好的配置文件](https://github.com/gpakosz/.tmux)

  [tmux脚本教程](http://codingjunkie.net/kafka-tmux/)

5. vim 格式化shell代码

  * 按两下小写g，即gg，定位光标到第一行。
  * 按住Shift+v，即大写V，进入可视化编辑的列编辑模式。
  * Shift+g，即大写G，选中整个代码。
  * 按下等号=，格式化所有代码。

6. vim选中字符复制/剪切/粘贴

  使用normal模式下的  v命令，进入visual模式，v+ j/k/h/l   进行文本选中

  对于选中的文本进行如下按键：

  d   ------ 剪切操作

  y   -------复制操作

  p   -------粘贴操作

  ^  --------选中当前行，光标位置到行首（或者使用键盘的HOME键）

  $  --------选中当前行，光标位置到行尾（或者使用键盘的END键）

7. Oh My ZSH! Oh-My-Zsh is an open source, community-driven framework for managing your ZSH configuration.

8. chsh 修改linux默认shell，使用方法：使用 `chsh -h` 查看

9. `cat /etc/shells` 查看linux可用的shell

10. `chmod a+x filename` 对于filename文件，所有用户均获得执行此文件的权限
