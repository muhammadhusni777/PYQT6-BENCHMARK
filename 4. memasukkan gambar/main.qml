import QtQuick 2.15
import QtQuick.Controls 2.15




Window {
	id : root
	width: 400
	maximumWidth : width
	minimumWidth : width
    height: 400
	maximumHeight : height
	minimumHeight : height
	title:"membuat windows"
	color : "grey"
    visible: true
	property QtObject backend
    flags: Qt.Dialog
	
	Image{
	x:0
	y:0
	width : 300
	height : 300
	source : "arduino.png"
	
	}
	
	Connections {
        target: backend

        function onUpdated(msg) {
            
        }
    }
	
}













