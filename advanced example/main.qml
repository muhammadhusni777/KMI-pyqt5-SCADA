import QtQuick 2.12
import QtQuick.Window 2.13
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.0


Window {
	id : root
	width: 1000
	maximumWidth : width
	minimumWidth : width
    height: 600
	maximumHeight : height
	minimumHeight : height
	title:"membuat windows"
	color : "#EDAA25"
    visible: true
    flags: Qt.Dialog
	
	
	Image{
	//anchors.horizontalCenter: parent.horizontalCenter
	x:140
	y:20
	width : 70
	height : 70
	source:"outseal.png"
	}
	
	Text {
					anchors.horizontalCenter: parent.horizontalCenter
					//x: 330
					y : 10
					text: "Studi Kasus HMI SCADA Chemical Mixer"
					font.family: "Helvetica"
					font.pointSize: 20
					color: "#012340"
				}
				
				
	Text {
					anchors.horizontalCenter: parent.horizontalCenter
					//x: 330
					y : 42
					text: "Ardumeka - KMI"
					font.family: "Helvetica"
					font.pointSize: 16
					color: "#012340"
				}
				
	Text {
					anchors.horizontalCenter: parent.horizontalCenter
					//x: 330
					y : 70
					text: "PyQt5 - PyModbus - Outseal PLC"
					font.family: "Helvetica"
					font.pointSize: 16
					color: "#012340"
				}
	
	
	StatusIndicator {
        x:75
		y:125
        color: "green"
		active:true
    }
	
	StatusIndicator {
        x:375
		y:125
        color: "red"
		active:true
    }
	
	StatusIndicator {
        x:400
		y:390
        color: "red"
		active:true
    }
	
	Gauge {
	x: 40
	y : 240
	
    minimumValue: 0
    value: 50
    maximumValue: 100
	height : 160
	
	style: GaugeStyle {
			valueBar: Rectangle {
				color: "green"
				implicitWidth: 35
			}
			
		}
}
	
	
	Rectangle{
		x : 600
		y : 120
		width : 350
		height : 250
		color : "transparent"
		visible : true
		border.color: "#012340"
        border.width: 4
	
	
	Text {
					x : 10
					y : 10
					
					text: "OUTSEAL PORT :"
					font.family: "Helvetica"
					font.pointSize: 12
					color: "#012340"
				}
				
				
	ComboBox {
		id : cb1
		x: 10
		y : 40

	}
	
	
	Text {
					x : 10
					y : 100
					
					text: "BAUD RATE :"
					font.family: "Helvetica"
					font.pointSize: 12
					color: "#012340"
				}
				
				
	ComboBox {
		id : cb2
		x: 10
		y : 130
		model: ['9600', '115200']
	}


	Text {
					x : 10
					y : 180
					
					text: "SLAVE ID :"
					font.family: "Helvetica"
					font.pointSize: 12
					color: "#012340"
				}
				
				
	ComboBox {
		id : cb3
		x: 10
		y : 200
		model: ['0', '1', '2', '3']
	}


	
	Text {
					x : 200
					y : 40
					
					text: "CONNECTION :"
					font.family: "Helvetica"
					font.pointSize: 12
					color: "#012340"
				}
	
	Button {
		id: connect
		x :200
		y :80
		width : 100
		height : 100
		text: ""
		font.pixelSize : 20
		
		Rectangle{
			id:connect_color
			width : parent.width
			height: parent.height
			color:"#172026"
			
			
			Image{
			width : parent.width
			height : parent.height
			source : "connect logo.png"
			
			}
			
			
		}
		
		
		palette {
      		button: "transparent"
			buttonText: "black"
		}
		
		onClicked:{
			
		}	
			
	}
	
	
	
	
	
	
	}


	
	
	
	Rectangle{
		x : 600
		y : 380
		width : 350
		height : 200
		color : "transparent"
		visible : true
		border.color: "#012340"
        border.width: 4
		
		Text {
					anchors.horizontalCenter: parent.horizontalCenter
					//x: 330
					y : 10
					text: "CONTROL MIXER"
					font.family: "Helvetica"
					font.pointSize: 12
					color: "#012340"
				}
				
		Text {
					//anchors.horizontalCenter: parent.horizontalCenter
					x: 10
					y : 50
					text: "MIXER SPEED : "
					font.family: "Helvetica"
					font.pointSize: 10
					color: "#012340"
				}
				
		Slider{
			x : 100
			y : 40
			to : 100
			from : 0
		}
		
		
		Button {

			x :20
			y :90
			width : 60
			height : 60
			text: "Valve A"
			font.pixelSize : 10
			
			
			 background: Rectangle {
                color: parent.down ? "red" :
                        (parent.hovered ? "red" : "green")
        }
		
		}
		
		
		Button {

			x :120
			y :90
			width : 60
			height : 60
			text: "Valve B"
			font.pixelSize : 10
			
			
			 background: Rectangle {
                color: parent.down ? "red" :
                        (parent.hovered ? "red" : "green")
        }
		
		}
		
		Button {

			x :220
			y :90
			width : 60
			height : 60
			text: "Valve C"
			font.pixelSize : 10
			
			
			 background: Rectangle {
                color: parent.down ? "red" :
                        (parent.hovered ? "red" : "green")
        }
		
		}
		
		
		
		
	}
	
	Rectangle {
		
		x: 150
		y: 420
		width: 140
		height: 140
		color: "#CC5500"
	
	CircularGauge {
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.verticalCenter: parent.verticalCenter
			id: gauge2
			width: parent.width - 10
			height: parent.height - 10
			value: 23
			
			minimumValue : 0
			maximumValue : 100
			//tickmarkStepSize : 1
			
			
	}
	}
	
	
	
	
	
	Image{
	//anchors.horizontalCenter: parent.horizontalCenter
	x:50
	y:150
	width : 400
	height : 400
	source:"piping.png"
	}
	
}













