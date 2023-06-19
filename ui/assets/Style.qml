pragma Singleton

import QtQuick 2.12

Item {
    readonly property color colorBackground: "#efefef"

    //navbar
    readonly property color colorNavigationBarBackground: "#000000"
    readonly property color colorNavigationBarFont: "#ffffff"
    readonly property int pixelSizeNavigationBarIco: 42
    readonly property real widthNavigationButtonIcon: 50
    readonly property real heightNavigationButtonIcon: widthNavigationButtonIcon
    readonly property real widthNavigationButtonDescription: 100
    readonly property real heightNavigationButtonDescription: heightNavigationButtonIcon
    readonly property real widthNavigationButton: widthNavigationButtonIcon + widthNavigationButtonDescription
    readonly property real heightNavigationButton: Math.max(heightNavigationButtonIcon, heightNavigationButtonDescription)
    readonly property real widthNavigationBarCollapsed: widthNavigationButtonIcon
    readonly property real widthNavigationBarExpanded: widthNavigationButton
    readonly property int pixelSizeNavigationBarText: 22

    //command bar
    readonly property color colorCommandBarBackground: "#cecece"
    readonly property color colorCommandBarFont: "#131313"
    readonly property color colorCommandBarFontDisabled: "#636363"

    readonly property real heightCommandBar: heightCommandButton
    readonly property int pixelSizeCommandBarIcon: 32
    readonly property int pixelSizeCommandBarText: 12

    readonly property real widthCommandButton: 80
    readonly property real heightCommandButton: widthCommandButton



    property alias fontAwesome: fontAwesomeLoader.name
    FontLoader{
        id: fontAwesomeLoader
        source: "qrc:/assets/fontawesome.ttf"
    }
}
