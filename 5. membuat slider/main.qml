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
	
	Slider {
		id: slider1
		x:0
		y:150
		height: 20
		width: 300
		value: 0
		from:0
		to: 255
		stepSize: 5
		orientation: Qt.Horizontal
		
		onValueChanged: {
		
		
		}
		
	}
	
	Text {
	x:300
	y:145
	text : slider1.value
	color : "#00FF00"
	font.pixelSize:24
	font.bold : true
	font.family : "Comic Sans MS"
	
	}
	
	Connections {
        target: backend

        function onUpdated(msg) {
            
        }
    }
	
}













