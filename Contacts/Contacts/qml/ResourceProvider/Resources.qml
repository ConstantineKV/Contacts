pragma Singleton

import QtQuick 2.0

Item {
    property alias contacts: _contacts
    QtObject {
        id: _contacts
        readonly property string defaultContactIcon: "qrc:/qml/resouces/default-contact-icon.svg"
        readonly property string okIcon: "qrc:/qml/resouces/ok.png"
        readonly property string cancelIcon: "qrc:/qml/resouces/cancel.png"
    }
}
