# Use C++ Qt Widget in PyQt

## Reference
https://github.com/jazzycamel/PyMyLabel

## Requirements:
- Visual Studio 2017
- Qt5.12.3
- Python3.7.3
- PyQt5.12.2
- SIP 4.19.17

### Build 
+ Open Visual Studio
+ Load ./src/glwidget.pro
++ Qt VS Tools that can be installed from extention are needed to load .pro file.
+ Build it on release

### Create Makefile
<QT_DIR> is a directory where Qt is installed.
<SIP_DIR> is a directory of SIP source. The directory has .sip files.

```
python configure.py --qmake=<QT_DIR>\5.12.3\msvc2017\bin  --sip-extras=-I<SIP_DIR>\sip
```

### Build .pyd
cd ./modules
nmake