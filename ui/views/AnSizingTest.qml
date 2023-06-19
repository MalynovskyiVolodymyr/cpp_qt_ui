import QtQuick 2.12
import QtQuick.Window 2.12

Window{
    visible: true
    width: 1024
    height: 768
    title: qsTr("Scratchpad")
    color: "#ffffff"

    Column{
        id: columnWithText

        Text {
            id: text1
            text: "Text 1"
        }

        Text {
            id: text2
            text: qsTr("Text 2")
            width: 300
            height: 20
        }

        Text {
            id: text3
            text: qsTr("Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3
                        Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3
                        Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3
                        Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 ")
        }

        Text {
            id: text4
            text: qsTr("Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4
Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4
Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4
Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 ")
            width: 300
        }

        Text {
            id: text5
            text: qsTr("Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5
Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5
Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5
Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 ")
            width: 300
            wrapMode: Text.Wrap
        }

    }

    Column{
        id: columnWithRectangle
        Rectangle{
            id: rectangle
            anchors.fill: parent
            color: "#000000"
        }

        Text {
            id: secondRect
            text: qsTr("Second Rect Second Rect Second Rect Second Rect Second Rect Second Rect Second Rect
Second Rect Second Rect Second Rect Second Rect Second Rect Second Rect Second Rect
Second Rect Second Rect Second Rect Second Rect Second Rect Second Rect Second Rect
Second Rect Second Rect Second Rect Second Rect Second Rect Second Rect Second Rect ")
            wrapMode: Text.Wrap
        }
    }

    Component.onCompleted: {
        console.log("Hello from javaScript ))")
        console.log("Text1 - inmplicit width: " + text1.implicitWidth +
                    "\nimplicit height: " + text1.implicitHeight)
    }
}
