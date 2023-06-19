pragma Singleton

import QtQuick 2.12

Item {

    //min size to calculate with
    property real minWidth: 1024
    property real minHeight: 768
    readonly property color accent: "#00CA9F"
    readonly property color nextAccent: "#00CA9F"
    readonly property color background: "#343C58"
    readonly property color darkBackground: "#272E49"
    readonly property color walletTableHeader: "#4C547A"
    readonly property color walletTableAlternate: "#2F3655"
    readonly property color walletTableHighlight: "#FDB06F"
    readonly property color inputFieldBackground: "#232942"
    readonly property color font: "#A9AEBE"
    readonly property color fontHighlight: "white"

    //needed to position dialog correctly
    property real currentWidth: 1024
    property real currentHeight: 768
}
