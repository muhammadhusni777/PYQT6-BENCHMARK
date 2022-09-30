import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    width: 400
    height: 400
    title: "Clock"
	color : "pink"
	property QtObject backend
	flags: Qt.WindowMaximized //Qt.Dialog
   
	
	
	Connections {
        target: backend

        function onUpdated(msg) {
            
        }
    }

}