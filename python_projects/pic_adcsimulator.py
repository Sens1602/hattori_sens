# -*- coding: utf-8 -*-
"""
Created on Mon Mar  5 15:05:35 2018

@author: Hattori
"""

import serial as s
import sys
import numpy as np
from time import sleep

class Main():
    def __init__(self):
        self.ser = s.Serial("COM3", 9600)
        print(self.ser.name)
        self.counter = 0
        self.t = np.arange(0, 3.14, 0.01)
        self.t_len = len(self.t)

if __name__ == '__main__':
    main = Main()

    while (1):
        vx1 = int((np.sin(main.t[main.counter])+1)*2048)
        vx2 = int((np.sin(main.t[main.counter]+np.pi/2)+1)*2048)
        vy1 = int((np.sin(main.t[main.counter]+np.pi)+1)*2048)
        vy2 = int((np.sin(main.t[main.counter]+3*np.pi/2)+1)*2048)
        """"
        vx1 = vx1.to_bytes(2, "big")
        vx2 = vx2.to_bytes(2, "big")
        vy1 = vy1.to_bytes(2, "big")
        vy2 = vy2.to_bytes(2, "big")
        """
        zero = 0
        data = [vx1.to_bytes(2, "big"), vx2.to_bytes(2, "big"),
                vy1.to_bytes(2, "big"), vy2.to_bytes(2, "big"),
                zero.to_bytes(1, "big")]
        print(data)
        main.ser.write(data[0])
        main.ser.write(data[1])
        main.ser.write(data[2])
        main.ser.write(data[3])
        main.ser.write(data[4])

        main.counter += 1
        if main.counter >= main.t_len:
            main.counter = 0
        sleep(0.01)

    sys.exit()
