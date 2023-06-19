import QtQuick 2.12
import QtQuick.Controls 2.2
import assets 1.0

Item{
    property alias iconCharacter: textIcon.text
    property alias description: textDescription.text
    property color hoverColor: Style.colorNavigationBarBackground

    signal navigationButtonClicked()

    width: Style.widthNavigationButton
    height: Style.heightNavigationButton

    Rectangle {        
        id: background
        anchors.fill: parent
        color: Style.colorNavigationBarBackground

        states:[
            State{
                name: "hover"
                PropertyChanges {
                    target: background
                    color: hoverColor
                }
            }
        ]

        Row{
            Text {
                id: textIcon
                width: Style.widthNavigationButtonIcon
                height: Style.heightNavigationButtonIcon
                font{
                    family: Style.fontAwesome
                    pixelSize: Style.pixelSizeNavigationBarText
                }
                color: Style.colorNavigationBarFont
                text: "\uf11a"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            Text {
                id: textDescription
                width: Style.widthNavigationButtonDescription
                height: Style.heightNavigationButtonDescription
                color: Style.colorNavigationBarFont
                text: "SET ME!"
                verticalAlignment: Text.AlignVCenter
            }
            //onClicked: masterController.ui_navigationController.goDashboardView()
        }

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: background.state = "hover"
            onExited: background.state = ""
            onClicked: navigationButtonClicked()
        }
    }
}

