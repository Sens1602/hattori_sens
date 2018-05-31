# -*- coding: utf-8 -*-
"""
Created on Mon Mar  5 15:05:35 2018

@author: Hattori
"""

import serial as s
import sys
from time import sleep

class Main():
    def __init__(self):
        self.ser = s.Serial("COM3", 9600)
        print(self.ser.name)


if __name__ == '__main__':
    main = Main()

    while (1):

        main.ser.write(b"\x0F\x62\x0F\x63\x0F\x64\x0F\x65\x00")
        sleep(0.2)
    sys.exit()
