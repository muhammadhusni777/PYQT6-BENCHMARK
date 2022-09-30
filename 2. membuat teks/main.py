import sys

from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine
from PyQt6.QtCore import *#QTimer, QObject, pyqtSignal

from time import strftime, localtime




class Backend(QObject):

    updated = pyqtSignal(str)

    def __init__(self):
        super().__init__()

        # Define timer.
        self.timer = QTimer()
        self.timer.setInterval(100)  # msecs 100 = 1/10th sec
        self.timer.timeout.connect(self.update_time)
        self.timer.start()
        
    @pyqtSlot(str)
    def button1(self, message):
        print(message)
    
    
    def update_time(self):
        # Pass the current time to QML.
        curr_time = strftime("%H:%M:%S", localtime())
        self.updated.emit(str(curr_time))
        


if __name__ == "__main__":
    
    app = QGuiApplication(sys.argv)

    engine = QQmlApplicationEngine()
    engine.quit.connect(app.quit)
    engine.load('main.qml')
    # Define our backend object, which we pass to QML.
    backend = Backend()

    engine.rootObjects()[0].setProperty('backend', backend)

    # Initial call to trigger first update. Must be after the setProperty to connect signals.
    backend.update_time()

sys.exit(app.exec())