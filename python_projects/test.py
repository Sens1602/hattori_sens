#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys
from PyQt4 import QtGui, QtCore,Qt

class Example(QtGui.QWidget):
    def __init__(self):
        super(Example, self).__init__()
        self.initUI()
    def initUI(self):
        treeWidget = QtGui.QTreeWidget(self)
        treeWidget.setColumnCount(5)
        treeWidget.addTopLevelItem(QtGui.QTreeWidgetItem(["test2","あいうえお"]))
        item1 = QtGui.QTreeWidgetItem(treeWidget)
        item1.setText(0,"アイテム1")
        item1.setText(1,"abcde")
        item1_1 = QtGui.QTreeWidgetItem(["child","100"])
        item1.addChild(item1_1)
        treeWidget.setHeaderLabels(["ファイル名","パス","更新日時","拡張子"])
        treeWidget.move(10, 10)
        self.move(300, 300)
        self.setWindowTitle('Main window')
        treeWidget.scrollToItem(item1_1)#量が多い時自動でスクロールして一番上にitem1_1を表示する
        treeWidget.setCurrentItem(item1)#起動時にitem1が選択された状態になる
        print(treeWidget.headerItem().text(0))
        print(treeWidget.columnCount())
        print(treeWidget.currentColumn())
        print(treeWidget.currentItem().text(1))
        print(treeWidget.indexFromItem(item1).row())
        print(item1.childCount())
        print(item1.child(0).text(0))
        #item1.removeChild(item1_1) #item1_1が消える
        treeWidget.editItem(item1)
        treeWidget.addTopLevelItem(item1.clone())
        treeWidget.addTopLevelItem(item1)#意味がない
        item1.setText(0,"変更後")
        print(item1_1.parent().text(0))
        self.show()
def main():
    app = QtGui.QApplication(sys.argv)
    ex = Example()
    sys.exit(app.exec_())


if __name__ == '__main__':
    main()