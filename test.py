from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *
from GLWidget import GLWidget

class Widget(QWidget):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent, **kwargs)
        
        l=QVBoxLayout(self)
        self._glWidget=GLWidget(self)
        l.addWidget(self._glWidget)
        
if __name__=="__main__":
    from sys import argv, exit
    
    a=QApplication(argv)
    w=Widget()
    w.show()
    w.raise_()
    exit(a.exec_())