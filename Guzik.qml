import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
	id: przycisk
	property int rozmiar: 42
	width: rozmiar
	height: rozmiar
	x: 20
	y: 50
	property var wartosc: 100
	signal przyciskWcisniety//(var wartosc)
	property bool pressed: mouseArea.pressed
	property int wcisniecia: 0
	property string tytul: "define in main.qml!"

	Connections {
			target: idReset
			onZrobReset: {
				wcisniecia = 0
			}
	}

	Button {
//		radius: 10
		anchors.fill: parent

//		color: "white"
	}

	Text {
		id: etykietkaGorna
		font.pixelSize: 10
//		text: mouseArea.pressed ? "|1|" : qsTr("1")
		text: wcisniecia
		anchors.right: przycisk.right
		anchors.rightMargin: 4
		anchors.horizontalCenterOffset: 5
		anchors.bottom: etykietka.top

	}

	Text {
		id: etykietka
//		text: mouseArea.pressed ? "|1|" : qsTr("1")
		text: tytul
		font.bold: true
		anchors.horizontalCenter: przycisk.horizontalCenter
		anchors.verticalCenter: przycisk.verticalCenter
//		font.pixelSize:

	}

	MouseArea {
		id: mouseArea
		anchors.fill: parent
		onClicked: {
			przyciskWcisniety()//(wartosc)
			console.log("sygnal wcisniety", wcisniecia)
			przycisk.wcisniecia=przycisk.wcisniecia+1
		}
	}

}

