import QtQuick 2.12
import QtQuick.Window 2.12

Window{
    visible: true
    width: 1024
    height: 768
    title: qsTr("ScratchPad")
    color: "#ffffff"

    Rectangle{
        id: paleYellowBackground
        anchors.fill: parent
        color: "#cece9e"
    }

    Rectangle{
        id: blackRectangleInTheCentre
        width: 120
        height: 120
        anchors.centerIn: parent
        color: "#000000"
    }

    Rectangle{
        id: greenRectangleInTheCentre
        width: 100
        height: 100
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 20
        color: "#008000"
    }

    Rectangle{
        id: redRectangleTopLeftCorner
        width: 100
        height: 100
        anchors{
            top: parent.top
            left: parent.left
        }
        color:"#800000"
    }


    Rectangle{
        id: rectagnleBottomRightCorner
        width: 100
        height: 100
        anchors{
            bottom: parent.bottom
            right: parent.right
            margins: 20
        }
        color: "#008080"
    }

    Rectangle{
        id: blueRectangleTopLeftCorner
        width: 100
        height: 100
        anchors{
            top: redRectangleTopLeftCorner.bottom
            left: parent.left
        }
        color: "#000080"
    }

    Rectangle{
        id: purpleRectagmleTopLeftCorner
        width: 100
        height: 100
        anchors{
            top: blueRectangleTopLeftCorner.bottom
            left: parent.left
            leftMargin: 20
        }
        color: "#800080"
    }


}
