import serial as s
import numpy as np

class Main():
    def __init__(self):
        self.ser = s.Serial("COM10", 9600)
        print(self.ser.name)

if __name__ == '__main__':
    main = Main()