import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    width: 400
    height: 600
    title: "Clock"
	
	property QtObject backend

    Rectangle {
        anchors.fill: parent

        Rectangle {
            anchors.fill: parent
            color: "red"

            Text {
				id : test
                text: "16:38:33"
                font.pixelSize: 24
                color: "white"
            }

        }

    }
	
	
	Button{
	x:0
	y:60
	text:"tombol"
	
	onClicked:{
						backend.button1("reset2")
					}
	
	}
	
	
	Connections {
        target: backend

        function onUpdated(msg) {
            test.text = msg;
        }
    }

}