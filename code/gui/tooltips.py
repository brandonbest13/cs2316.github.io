#!/usr/bin/env python3

import sys
from PyQt4 import QtGui


class MainWindow(QtGui.QWidget):

    def __init__(self):
        super(MainWindow, self).__init__()
        self.setGeometry(300, 300, 250, 150)
        self.setWindowTitle('Tooltips')

        btn = QtGui.QPushButton('Button', self)
        btn.setToolTip('This is a <b>QPushButton</b> widget')
        #btn.resize(btn.sizeHint())
        btn.move(50, 50)

if __name__ == '__main__':
    app = QtGui.QApplication(sys.argv)
    main_window = MainWindow()
    main_window.show()
    sys.exit(app.exec_())
