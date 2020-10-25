# Windows_.bat_program_-collection
Windows .bat 程序包 (beta) 项目，欢迎添砖加瓦

介绍
集成一些常用的工具而已，代码也超级简单
欢迎体验，用的时候可能要自己修改。

提示
程序调用的是Windows 自带命令，如果使用的不是纯净的系统，
很多程序将无法执行。

使用过程中有问题、建议，可以提出来
我将修改后更新，谢谢。

其他说明*
01. 增加磁盘缓存.reg （设置磁盘缓存 128M，重启后生效）

02. 刪除更新緩存.bat
更新緩存文件夹修正为 %windir%\SoftwareDistribution\Download\
此目录是Windows的更新緩存下载位置，
一些清理工具选择将 %windir%\SoftwareDistribution\  这个目录完全删除
结果， Windows Update 将从零开始搜索更新，过程将耗费大量时间

------------------------------------------------------------------------

不同上面，这里弄个 alpha版的系统优化方案，主要是个人找到的一些东西。

a1. MMCSS优化 (实验性，建议和ThrottleStop一起使用)
https://msdn.microsoft.com/en-us/library/ms684247.aspx
这个服务很关键，很多优化软件都把它禁用了，造成各种驱动出错，硬件无法识别

a2. 大系统缓存 （适用于4G及以上运存配置 或 64位系统）
https://technet.microsoft.com/en-us/library/cc938581.aspx

MMCSS_op.reg

b1. 异步运行启动脚本 （加快开机速度）
https://technet.microsoft.com/en-us/library/cc958585.aspx
开始菜单栏搜索gpedit.msc
逐次打开 计算机配置-管理模板-系统-脚本-异步运行启动脚本-选择启用

b2.登陆时不显示欢迎屏幕 （加快开机速度）
开始菜单栏搜索gpedit.msc
逐次打开 计算机配置-管理模板-系统-登陆-登陆时不显示欢迎屏幕 -选择启用
