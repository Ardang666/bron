xrandr --output VGA-1 --same-as HDMI-1 --auto
打开外接显示器(--auto:最高分辨率)，与笔记本液晶屏幕显示同样内容（克隆）
xrandr --output VGA-1 --same-as HDMI-1 --mode 1024x600
打开外接显示器(分辨率为1024x600)，与笔记本液晶屏幕显示同样内容（克隆）
xrandr --output VGA-1 --right-of HDMI-1 --auto
打开外接显示器(--auto:最高分辨率)，设置为右侧扩展屏幕
xrandr --output VGA-1 --off
关闭外接显示器
xrandr --output VGA-1  --auto --output HDMI-1 --off
打开外接显示器，同时关闭笔记本液晶屏幕（只用外接显示器工作）
xrandr --output VGA-1 --off --output HDMI-1 --auto
关闭外接显示器，同时打开笔记本液晶屏幕 （只用笔记本液晶屏）

https://blog.csdn.net/maplblue/article/details/62891620
