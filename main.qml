import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Extras 1.4

ApplicationWindow {
	id: okno
	visible: true
	width: 280
	height: 480
	property int suma: 0

	signal zrobReset

	Text {
		y: 418
		width: 50
		height: 51
		color: "#000000"
		text: suma
		font.pointSize: 20
		font.bold: true
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
		x: 97
	}
	//5,6,7,8,9,11,12,13,20,21
//	signal dodaj( Number punkty )

//	title: qsTr("Hello World")

//	menuBar: MenuBar {
//		Menu {
//			title: qsTr("File")
//			MenuItem {
//				text: qsTr("&Open")
//				onTriggered: console.log("Open action triggered");
//			}
//			MenuItem {
//				text: qsTr("Exit")
//				onTriggered: Qt.quit();
//			}
//		}
//	}

//	Label {
//		text: qsTr("Hello World")
//		anchors.centerIn: parent
//	}


	Grid {
		x: 5
		y: 50
//			Rectangle{
//				anchors.fill: parent
//				color: "steelblue"
//			}


		rows: 2; columns: 3; spacing:22
		width: 280//parent.width
		height: 200/2

		Guzik{rozmiar: 50; tytul: "1"; onPrzyciskWcisniety: okno.suma=okno.suma+1}
		Guzik{rozmiar: 50; tytul: "2"; onPrzyciskWcisniety: okno.suma=okno.suma+2}
		Guzik {	rozmiar: 50; tytul: "3"}
		Guzik {	rozmiar: 50; tytul: "4"}
		Guzik {	rozmiar: 50; tytul: "6"}
		Guzik {	rozmiar: 50; tytul: "8"}
	}

	Grid {
		x: 5
		y: 207
//			Rectangle{
//				anchors.fill: parent
//				color: "steelblue"
//			}


		rows: 2; columns: 6; spacing:2
		width: 280//parent.width
		height: 200/2

		Guzik{tytul: "5"; onPrzyciskWcisniety: okno.suma=okno.suma+1}
		Guzik{tytul: "6"; onPrzyciskWcisniety: okno.suma=okno.suma+2}
		Guzik{tytul: "7"; onPrzyciskWcisniety: okno.suma=okno.suma+2}
		Guzik{tytul: "8"; onPrzyciskWcisniety: okno.suma=okno.suma+2}
		Guzik{tytul: "9"; onPrzyciskWcisniety: okno.suma=okno.suma+2}
		Guzik{tytul: "10"; onPrzyciskWcisniety: okno.suma=okno.suma+2}
		Guzik{tytul: "11"; onPrzyciskWcisniety: okno.suma=okno.suma+2}
		Guzik{tytul: "12"; onPrzyciskWcisniety: okno.suma=okno.suma+2}
		Guzik{tytul: "13"; onPrzyciskWcisniety: okno.suma=okno.suma+2}
		Guzik{tytul: "20"; onPrzyciskWcisniety: okno.suma=okno.suma+2}
		Guzik{tytul: "21"; onPrzyciskWcisniety: okno.suma=okno.suma+2}


	}

	Button {
		id: przyciskNajdluzszyPociag
		x:12; y: 349
		width: 92
		height: 43
		checkable : true

		Text {
			id: tekstNajdluzszyPociag
			text: "Najdluzszy \n pociąg"
			font.pointSize: 9
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.verticalCenter: parent.verticalCenter

		}

		onClicked: {
			console.log(przyciskNajdluzszyPociag.checked)
			przyciskNajdluzszyPociag.checked ? okno.suma=okno.suma+10 : okno.suma=okno.suma-10
		}
	}

	Text {
		id: idPociagi
		x: 12
		y: 12
		width: 68
		height: 25
		text: qsTr("Pociągi")
		font.underline: false
		font.strikeout: false
		font.italic: false
		font.pixelSize: 16
	}

	Text {
		id: idTrasy
		x: 12
		y: 184
		width: 68
		height: 25
		text: qsTr("Trasy")
		font.pixelSize: 16
	}

	Text {
		id: idInne
		x: 12
		y: 310
		width: 68
		height: 25
		text: qsTr("Inne")
		font.pixelSize: 16
	}

	Text {
		 id: idSUMA
		 x: 12
		 y: 431
		 width: 68
		 height: 25
		 text: qsTr("SUMA:")
		 font.bold: true
		 font.pixelSize: 16
	 }

	 Button {
		 signal zrobReset
		 id: idReset
		 x: 223
		 y: 17
		 width: 43
		 height: 20
		 text: qsTr("Reset")

		 onClicked: {
			 zrobReset()
			 okno.suma = 0
		 }
	 }

	 Button {
		 id: idDworzec1
		 x: 117
		 y: 349
		 width: 47
		 height: 43
		 checkable : true

		 Text {
			 id: text5
			 x: 5
			 y: 17
			 text: "Dworzec"
			 font.pixelSize: 9
			 anchors.horizontalCenter: parent.horizontalCenter
			 anchors.verticalCenter: parent.verticalCenter
		 }

		 onClicked: {
			 idDworzec1.checked ? okno.suma=okno.suma+4 : okno.suma=okno.suma-4
		 }

		Connections {
				target: idReset
				onZrobReset: {
					console.log("asdasdasd")
					idDworzec1.checked = false
				}
		}
	 }

	 Button {
		 id: idDworzec2
		 x: 170
		 y: 349
		 width: 47
		 height: 43
		 text: qsTr("")
		 checkable : true

		 Text {
			 id: text6
			 x: 5
			 y: 17
			 text: qsTr("Dworzec")
			 font.pixelSize: 9
		 }
	 }

	 Button {
		 id: idDworzec3
		 x: 223
		 y: 349
		 width: 47
		 height: 43
		 checkable : true
		 visible: true

		 Text {
			 id: text7
			 x: 5
			 y: 17
			 text: qsTr("Dworzec")
			 font.pixelSize: 9
		 }
	 }
}




