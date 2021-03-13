rem 在上级目录创建符号链接，用于latex的编译
rem 若将此项目用作子项目，请运行

@echo off

mklink "..\nivisart.cls" ".\nivisart.cls"
mklink "..\nivisdraw.sty" ".\nivisdraw.sty"
mklink "..\nivisfig.cls" ".\nivisfig.cls"
mklink "..\cnmath.sty" ".\cnmath.sty"

attrib ".\nivisart.cls" +h +r
attrib ".\nivisdraw.sty" +h +r
attrib ".\nivisfig.cls" +h +r
attrib ".\cnmath.sty" +h +r