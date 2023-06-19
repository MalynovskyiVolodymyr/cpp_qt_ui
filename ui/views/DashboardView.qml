import QtQuick 2.12
import QtQuick.Controls 2.2
import assets 1.0

Item{
    Rectangle{
        anchors.fill: parent
        color: Style.colorBackground

        Text {
            anchors.centerIn: parent
            text: qsTr("DashBoard View")
        }

    }
}
