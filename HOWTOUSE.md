# DBM第三方语音包使用


[https://www.curseforge.com/wow/addons/search?search=dbm+voice](https://www.curseforge.com/wow/addons/search?search=dbm+voice)

搜索喜欢的语音包下载到魔兽世界插件目录下，注意语音包必须对应相应版本的`DBM`插件，必须有`DBM`核心组件，在插件目录下有如下的插件包：

![dir](http://static.zybuluo.com/usiege/s1gue9fn2c5xs1v62c8r8br1/image_1fgbe8la91sp11shh2vpbkjvi13.png)

进入游戏后，在聊天框输入：

```
/dbm
```
在`DBM`设置选项中，将语音项设置为第三方语音：

![setting](http://static.zybuluo.com/usiege/eo0sfd1dg3m7c7cabdzl1ucr/image_1fgno2grafnj1e1n12b01g2s1taip.png)



## 可使用的音频文件

文件使用`.ogg`格式，如为其他格式需要进行转换。转换的工具有多种，以下介绍几种常用的：

### 在线转换工具

[https://audio.online-convert.com/convert-to-ogg](https://audio.online-convert.com/convert-to-ogg)

在线的Web端转换工具，免费且使用简单，无需下载其他软件。

![image_1fgbddj99ufb1v8o1e2794h13o09.png-342.6kB][1]

### 格式工厂

[http://www.pcfreetime.com/formatfactory/CN/index.html](http://www.pcfreetime.com/formatfactory/CN/index.html)

老牌转换工具了，只能`Windows`下使用，也可转换视频等文件；

## DBM第三方语音包使用

[https://www.curseforge.com/wow/addons/search?search=dbm+voice](https://www.curseforge.com/wow/addons/search?search=dbm+voice)

搜索喜欢的语音包下载到魔兽世界插件目录下，注意语音包必须对应相应版本的`DBM`插件，必须有`DBM`核心组件，在插件目录下有如下的插件包：

![image_1fgbe8la91sp11shh2vpbkjvi13.png-7kB][2]

进入游戏后，在聊天框输入：

```
/dbm
```
在`DBM`设置选项中，将语音项设置为第三方语音：

![image_1fgbedhpaeua11k5majj2103120.png-1157.2kB][3]

具体自己制作的插件包如何出现在选项中，继续往后看。


## DBM语音包制作

参照当前流行的语音包，制作的包体为单体插件文件夹，命名方式为`DBM-VPXX`，所使用名称全部应为英文；

![image_1fgbdvpi7n4u4d1p0g19bj3kmm.png-11.8kB][4]

在游戏中第三方语音设置选项中：

![image_1fgj4eqac1qt413duon612ej1ev9.png-314.1kB][5]

接下来添加我们自己的语音包：

### DBM-VPXiaotu

- 主要组件

新建文件夹`DBM-VPXiaotu`，放置在游戏插件目录`Interface/Addons`下，在该文件夹下新建`DBM-VPXiaotu.toc`文件（注意：除后缀名称要与文件夹名称一致）：
```
## Interface: 20502
## X-Min-Interface: 20502
## Title:|cffffe00a<|r|cffff7d0aDBM|r|cffffe00a>|r |cff69ccf0Voicepack Xiaotu|r
## Title-zhCN:|cffffe00a<|r|cffff7d0aDBM|r|cffffe00a>|r |cff69ccf0云小兔语音包|r
## Title-zhTW:|cffffe00a<|r|cffff7d0aDBM|r|cffffe00a>|r |cff69ccf0云小兔語音包|r
## DefaultState: enabled
## RequiredDeps: DBM-Core
## Author: 云小兔, Hearwinds
## Version: 20210928
## Notes: https://github.com/usiege/DBM-VPXiaotu
## X-DBM-Voice: 1
## X-DBM-Voice-Name: 云小兔
## X-DBM-Voice-ShortName: Xiaotu
## X-DBM-Voice-Version: 01
## X-DBM-Voice-HasCount: 1

DBM-VPXiaotu.lua
```

在同目录下新建`DBM-VPXiaotu.lua`文件：
```
local XiaoTu = CreateFrame("Frame")
XiaoTu:RegisterEvent("PLAYER_ENTERING_WORLD")
local XiaoTuEvent = function()
    if not DBM_AllSavedOptions["Default"] then 
        DBM_AllSavedOptions["Default"] = {} 
    end
    DBM_AllSavedOptions["Default"]["ChosenVoicePack"] = "Xiaotu"
end
XiaoTu:SetScript("OnEvent", XiaoTuEvent)
```

- 游戏中设置

进入游戏，在插件列表中勾选：
![image_1fgj77vel3qqnf01o761pokhn513.png-25.4kB][6]

在聊天框输入：
```
/dbm
```
唤起`DBM`设置界面，并在设置选项中设置云小兔：

![image_1fgj7nveo1hmh6vip5e9721g6f1g.png-627.4kB][7]


### 设置成功语音测试

在聊天栏输入：

```
/dbm pull 5
```
倒数声音为新设置的语音则为成功！！！

![image_1fhppl8j61arc1ehk1bve9fcufp.png-51.7kB][9]

## DBM特定音效替换

### 替换掉旧的音效

缺点是DBM主程序插件更新时需要再次修改，不方便传播。

### 添加新的音效

不需要更新DBM主程序，即`DBM-Core`以及`DBM-GUI`，网站有DBM版本更新时也可以随时更新，语音包插件可独立更新；

需要写一些更改特定声音的代码，并且在加载自定义语音包时将设置生效。

添加音效的操作涉及一些代码，后续有需要我们会持续更新。

## 以上

赶快录制属于你自己的DBM提醒吧！我在听风，也在等你。



  [1]: http://static.zybuluo.com/usiege/l6vu7hurm6iqp7ytt2pfj4u2/image_1fgbddj99ufb1v8o1e2794h13o09.png
  [2]: http://static.zybuluo.com/usiege/s1gue9fn2c5xs1v62c8r8br1/image_1fgbe8la91sp11shh2vpbkjvi13.png
  [3]: http://static.zybuluo.com/usiege/2pypjlmhilw2o0gfmabrw2n8/image_1fgbedhpaeua11k5majj2103120.png
  [4]: http://static.zybuluo.com/usiege/grnxajsqcim6e4ql37s0waq0/image_1fgbdvpi7n4u4d1p0g19bj3kmm.png
  [5]: http://static.zybuluo.com/usiege/3o6a8ncltis3nxjl7zyvsx2q/image_1fgj4eqac1qt413duon612ej1ev9.png
  [6]: http://static.zybuluo.com/usiege/mzi83yyf0ph6qqjaq1u6xlh5/image_1fgj77vel3qqnf01o761pokhn513.png
  [7]: http://static.zybuluo.com/usiege/vtnj5vpojcbsefxbpy9acp42/image_1fgj7nveo1hmh6vip5e9721g6f1g.png
  [9]: http://static.zybuluo.com/usiege/peumg5dkl41el9tyn0a0482c/image_1fhppl8j61arc1ehk1bve9fcufp.png


