import numpy as np
import serial as sr
import threading
from time import sleep

def serial_connect():
    ser = sr.Serial("COM14", 9600)
    while (1):
        # print("kashikoma")
        data_b = ser.read(9)
        print(data_b)
        bytes_list = list(data_b)

        raw_vx1 = bytes_list[0] * 256 + bytes_list[1]
        raw_vx2 = bytes_list[2] * 256 + bytes_list[3]
        raw_vy1 = bytes_list[4] * 256 + bytes_list[5]
        raw_vy2 = bytes_list[6] * 256 + bytes_list[7]
        vx1 = 5 * raw_vx1 / 4096
        vx2 = 5 * raw_vx2 / 4096
        vy1 = 5 * raw_vy1 / 4096
        vy2 = 5 * raw_vy2 / 4096
        x = ((vx2 + vy1) - (vx1 + vy2)) / (vx1 + vx2 + vy1 + vy2)
        y = ((vx2 + vy2) - (vx1 + vy1)) / (vx1 + vx2 + vy1 + vy2)

        data_set = [vx1, vx2, vy1, vy2, x, y]
        print(data_set)
        #sleep(0.0001)

if __name__ == '__main__':
    serial_connect()