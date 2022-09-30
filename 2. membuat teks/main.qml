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
   
	Text{
	id : text1
	x:0
	y:20
	text:"Hello World"
	color: "#00FF00"
	font.family  : "Comic Sans MS"
	font.pixelSize: 35
	font.bold : true	
	
	
	}
	
	Connections {
        target: backend

        function onUpdated(msg) {
            
        }
    }

}