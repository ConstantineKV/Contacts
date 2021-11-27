import QtQuick 2.0
import ContactsModule.Base 1.0
import Contacts 1.0
import QtQuick.Controls 2.12
import StyleSettings 1.0

BaseListView {
    id: root
    model: ContactsModel {}

    Popup {
        property string name
        property string surname
        property string phone
        property int currentIndex
        id: popup
        x: 100
        y: 100
        width: 520
        height: 160
        modal: true
        focus: true
        contentItem: EditWindow {
            name: popup.name
            surname: popup.surname
            phone: popup.phone
            onOkAnswer: {
                model.editContact(popup.currentIndex, name, surname, phone)
                popup.close()
            }
            onCancelAnswer: popup.close()
        }

        closePolicy: Popup.CloseOnPressOutside
    }
    function addContact(name, surname, phone) {
        model.addContact(name, surname, phone)
    }
    delegate: ContactDelegate {
        width: root.width
        height: 100

        MouseArea {
            id: contactField
            anchors.fill: parent
            onClicked: {

                popup.name = name
                popup.surname = surname
                popup.phone = phone
                popup.currentIndex = index
                popup.open()
                //root.openEditPopup(name, surname, phone)
            }
        }
    }
}
