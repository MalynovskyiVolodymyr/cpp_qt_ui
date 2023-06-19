import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.2
import assets 1.0
import components 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Client Management")

    Connections{
        target: masterController.ui_navigationController
        onGoCreateClientView:{
            contentFrame.replace("qrc:/views/CreateClientView.qml")
        }

        onGoDashboardView:{
            contentFrame.replace("qrc:/views/DashboardView.qml")
        }

        onGoEditClientView:{
            contentFrame.replace("qrc:/views/EditClientView.qml", {selectedClient: client})
        }

        onGoFindClientView:{
            contentFrame.replace("qrc:/views/FindClientView.qml")
        }

    }

    NavigationBar {
        id: navigationBar
    }

    StackView{
        id: contentFrame
        clip: true
        anchors{
            top: parent.top
            bottom: parent.bottom
            left: navigationBar.right
            right: parent.right
        }
        initialItem: Qt.resolvedUrl("qrc:/views/SplashView.qml")
    }

//    Button{
//        anchors{
//            top: parent.Center
//        }
//        width: 100
//        height: 30

//        ColorAnimation {
//            from: "white"
//            to: "black"
//            duration: 200
//        }

//        text: "Go to Create Client View"

//        onClicked: {
//            contentFrame.replace("qrc:/views/CreateClientView.qml")
//        }
//    }

    Component.onCompleted: {
        contentFrame.replace("qrc:/views/DashboardView.qml")// contentFrame.replace clean history and replace
    }
}
