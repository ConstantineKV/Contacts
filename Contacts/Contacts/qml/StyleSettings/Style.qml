pragma Singleton

import QtQuick 2.0

QtObject {

    property bool isDarkTheme: true
    readonly property color primaryColor: isDarkTheme ? "#BB86FC" : "#6200EE"
    readonly property color primaryVariantColor: "#3700B3"
    readonly property color secondaryColor: "#03DAC6"
    readonly property color secondaryVariant: isDarkTheme ? "#018786" : secondaryColor
    readonly property color backgroundColor: isDarkTheme ? "#121212" : "#FFFFFF"
    readonly property color errorColor: isDarkTheme ? "#FFFFFF" : "#000000"
    readonly property color textColor: isDarkTheme ? "#FFFFFF" : "#000000"
    readonly property color themeDefaultColor: isDarkTheme ? "#000000" : "#FFFFFF"
    readonly property color themeInvertedColor: isDarkTheme ? "#FFFFFF" : "#000000"

    readonly property real defaultOpacity: 1
    readonly property real emphasisOpacity: 0.87
    readonly property real secondaryOpacity: 0.6
    readonly property real disabledOpacity: 0.38

    readonly property real defaultOffset: 15
    readonly property real mediumOffset: 10
    readonly property real tinyOffset: 5

    readonly property real bigSpacing: 20
    readonly property real mediumSpacing: 10
    readonly property real smallSpacing: 5
}
