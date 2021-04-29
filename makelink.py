# makelink.py: 在上级目录创建符号链接，用于latex的编译
# 若将此项目用作子项目，请运行

import os

src_dir = os.getcwd()
dst_dir = os.path.abspath(os.path.join(os.getcwd(), ".."))

def setSourceDir(new_src):
    global src_dir
    src_dir = new_src

def setDstDir(new_dst):
    global dst_dir
    dst_dir = new_dst

def getFilePath(filename):
    return os.path.abspath(os.path.join(src_dir, filename))

def getLinkPath(filename):
    return os.path.abspath(os.path.join(dst_dir, filename))

# link
def link():
    os.symlink(getFilePath('nivisart.cls'), getLinkPath('nivisart.cls'))
    os.symlink(getFilePath('nivisdraw.sty'), getLinkPath('nivisdraw.sty'))
    os.symlink(getFilePath('nivisfig.cls'), getLinkPath('nivisfig.cls'))
    os.symlink(getFilePath('cnmath.sty'), getLinkPath('cnmath.sty'))

if __name__ == '__main__':
    link()
    print('nivisart: Successfully linked template files from ' + src_dir + ' to ' + dst_dir)