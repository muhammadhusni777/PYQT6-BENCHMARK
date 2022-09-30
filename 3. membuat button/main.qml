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
	
	Button {
		id: button1
		x :100
		y :200
		text: "button1"
		
		palette {
        button: "#00FF00"
		buttonText: "black"
		}
		
		onClicked:{
			
		}
		
	}
	
	Connections {
        target: backend

        function onUpdated(msg) {
            
        }
    }
	
}













