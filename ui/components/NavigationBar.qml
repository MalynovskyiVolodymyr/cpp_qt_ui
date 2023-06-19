import QtQuick 2.12
import QtQuick.Controls 2.2
import assets 1.0

Item {
    property bool isCollapsed: true

    anchors{
        top: parent.top
        bottom: parent.bottom
        left: parent.left
    }

    width: isCollapsed ? Style.widthNavigationBarCollapsed : Style.widthNavigationBarExpanded

    Rectangle{
        id: navigationBar
        anchors.fill: parent
        color: Style.colorNavigationBarBackground

        Column{
            NavigationButton {
                iconCharacter: "\uf0c9"
                description: ""
                hoverColor: "#993333"
                onNavigationButtonClicked: isCollapsed = !isCollapsed
            }

            NavigationButton {
                iconCharacter: "\uf015"
                description: "Dashboard"
                hoverColor: "blue"
                onNavigationButtonClicked: masterController.ui_navigationController.goDashboardView()
            }

            NavigationButton {
                iconCharacter: "\uf234"
                description: "New Client"
                hoverColor: "red"
                onNavigationButtonClicked: masterController.ui_navigationController.goCreateClientView()
            }

            NavigationButton {
                iconCharacter: "\uf002"
                description: "Find Client"
                hoverColor: "yellow"
                onNavigationButtonClicked: masterController.ui_navigationController.goFindClientView()
            }
        }
    }

}

