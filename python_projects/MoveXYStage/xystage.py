import serial
import numpy as np
from time import sleep


class XYStage():
       
    #コンストラクタ＿ポート設定
    def __init__(self, port_n):
        self.message = "null"
        self.command = "null"

        self.ser = serial.Serial(timeout=1)
        self.ser.baudrate = 9600
        self.ser.port = port_n
        self.ser.open()
        text = "COM" + str(port_n) + " Opened!!"
        print(text)

    """
    * speed setting command
    * @param S1 x-axis S
    * @param F1 x-axis F
    * @param R1 x-axis R
    * @param S2 y-axis S
    * @param F2 y-axis F
    * @param R2 y-axis R
    """

    def Setvelocity(self, S1,  F1,  R1, S2, F2, R2):
        self.command = ("D:W" + "S" + str(S1) + "F" + str(F1) + "R" + str(R1) +
                   "S" + str(S2) + "F" + str(F2) + "R" + str(R2) + "\r\n")
        self.ser.write(self.command.encode())

        sleep(0.05)
        self.message = self.ser.readline()

        print("transmitting..." + self.command + "\r\n")
        print(self.message.decode() + "\r\n")
        print("kanopero")


    """
    * absolute move.
    * @param acx x-axis pulse
    * @param acy y-axis pulse 
    """
    def SetAbsCoordinates(self, acx, acy):
        if(acx >= 0):
            self.command = "A:W+P" + str(acx)
        else:
            self.command = "A:W-P" + str(np.abs(acx))

        if(acy >= 0):
            self.command = self.command + "+P" + str(acy) + "\r\n"
        else:
            self.command = self.command + "-P" + str(np.abs(acy)) + "\r\n"		

        self.ser.write(self.command.encode())
        sleep(0.05)
        self.message = self.ser.readline()
        self.ser.write(b"G:\r\n")
        sleep(0.05)
        self.message = self.ser.readline()

        print("transmitting..." + self.command + "\r\n")
        print(self.message.decode() + "\r\n")
        print("pippi")


    """
    * relative move.
    * @param acx x-axis pulse
    * @param acy y-axis pulse
    """
    def SetRelCoordinates(self, rcx, rcy):
        if(rcx >= 0):
            self.command = "M:W+P" + str(rcx)
        else:
            self.command = "M:W-P" + str(np.abs(rcx))

        if(rcy >= 0):
            self.command = self.command + "+P" + str(rcy) + "\r\n"
        else:
            self.command = self.command + "-P" + str(np.abs(rcy)) + "\r\n"

        self.ser.write(self.command.encode())
        sleep(0.05)
        self.message = self.ser.readline()
        self.ser.write(b"G:\r\n")
        sleep(0.05)
        self.message = self.ser.readline()
        
        print("transmitting..." + self.command + "\r\n")
        print(self.message.decode() + "\r\n")

        
    """
    * detect the mechanical origin.
    """
    def DetectOrigin(self):
        self.command = "H:W\r\n"
        self.ser.write(self.command.encode())
        sleep(0.05)
        self.message = self.ser.readline()

        print("transmitting..." + self.command + "\r\n")
        print(self.message.decode() + "\r\n")


    """
    * carry out Calibration of a PSD Sensor.
    * @param xrange 1/500 mm
    * @param yrange 1/500 mm
    * @param pich 1/500 mm
    * @param deltatime s
    """
    def PSDCalibration(self, xrange, yrange, pich, deltatime):
        
        self.xrange = xrange
        self.yrange = yrange
        self.pich = pich
        self.deltatime = deltatime

        for j in range(0, int((2 * self.yrange)/self.pich)):
            self.SetAbsCoordinates(-1 * (xrange + self.pich), -1 * yrange + j * pich)
            sleep(15)
            for i in range(0, int((2 * self.xrange)/self.pich)):
                self.SetAbsCoordinates(-1 * xrange + i * pich, -1 * yrange + j * pich)
                sleep(self.deltatime)
                

    #終了
    def fin(self):
        self.ser.close()
