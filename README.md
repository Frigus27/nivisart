# Nivisart：一个为中文写作设计的库

本着写文章方便的目的，自己写了一个包，结果发现还挺好用hhh
那就发出来吧

# 特性

1. 更符合中文环境的theorem、paragraph、proof等
2. 自带大部分数学支持，提供更符合中文环境的初等数学符号（主要是几何）
3. 自带hyperref，图片链接到正确位置
4. 自带background，便于加水印
5. 自带无机化学支持
6. 自带tikz支持，原生支持tkz-euclide、circuitikz等
7. 页边距更符合中国文章习惯
8. 可绘制图片

# 使用
* 若编译文章，于导言处`\documentclass{nivisart}`
* 若编译图片，于导言处`\documentclass{nivisfig}`

# 注意事项
若用此模版编写新模版时，推荐**将此项目作为git的一个子项目**。

若将此模版用作子项目，第一次编译时，请为`nivisart`目录下的每一个latex文件在根目录（父项目目录）创建同名的符号链接，以确保`LaTeX`解释器能正常运行。

**注：**若有`python`，也可以运行`nivisart`目录下的`makelink.py`文件以建立符号链接。

