#XYステージSGSP26-200＆コントローラSHOT-202　稼働プログラム
"""
～使い方～
キャリブレーションを行う場合
PSDCalibrationでキャリブレーション条件を設定して実行

ただ動かす場合
PSDCalibrationの代わりにSetAbsCoordinatesか
SetRelCoordinatesを実行して絶対、相対座標移動を行う

なお、原点はコントローラをマニュアルモードにして手動で設定します
DetectOriginはステージの端を原点に設定します
"""
from xystage import XYStage
from time import sleep

def main():
    #通信準備
    stage = XYStage(11)

    #メイン動作部
    #速度設定
    stage.Setvelocity(100, 5000, 1000, 100, 5000, 1000)
    #スリープ
    sleep(0.05)

    #機械原点検出(初期化)
    #stage.DetectOrigin()

    #相対移動 500パルスで1mm
    #stage.SetAbsCoordinates(10000, 0)
    
    #絶対移動 500パルスで1mm
    #stage.SetRelCoordinates(0, 0)

    """
    * carry out Calibration of a PSD Sensor.
    * @param xrange 1/500 mm
    * @param yrange 1/500 mm
    * @param pich 1/500 mm
    * @param deltatime s
    """
    stage.PSDCalibration(25000, 25000, 5000, 3)
    stage.fin()
    
if __name__ == '__main__':
    main()