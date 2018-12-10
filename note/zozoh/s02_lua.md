
---
title  : Luat学习笔记·Lua语言
author : zozoh
---

![](https://www.lua.org/images/lua25.gif)

--------------------------------------------
# Lua 脚本的中文学习资料

关于 Lua 语言，我阅读的资料如下:

- [酷壳·Lua简明教程](https://coolshell.cn/articles/10739.html)
    > [左耳朵耗子](https://coolshell.cn/haoel)的简明教程，基本上30分钟可以读完
- [菜鸟教程·Lua 教程](http://www.runoob.com/lua/lua-tutorial.html)
    > 用来作为手册快速查询语法，API 等
- [Lua官网](https://www.lua.org/)
    > 最全，英文无障碍者首选

--------------------------------------------
# 简明注释

我认为语法上 `lua` 不是类 `C` 的语法，而是类 `BASIC`：

```lua
if age == 40 and sex =="Male" then
    print("男人四十一枝花")
elseif age > 60 and sex ~="Female" then
    print("old man without country!")
elseif age < 20 then
    io.write("too young, too naive!\n")
else
    local age = io.read()
    print("Your age is "..age)
end
```

当然，骨子里，很像 `JavaScript`，也有自己的运行时的原型链 `__index`