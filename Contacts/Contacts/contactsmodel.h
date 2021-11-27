#pragma once
#include <QAbstractListModel>
#include <vector>
#include "contact.h"
#include "contactsreader.h"

class ContactsModel  : public QAbstractListModel
{
    Q_OBJECT
public:
    ContactsModel();

    static void registerMe(const std::string& moduleName);

    QHash<int, QByteArray> roleNames() const;
    int rowCount(const QModelIndex& parent = {}) const override;
    QVariant data(const QModelIndex& index = {}, int role = Qt::DisplayRole) const override;
    Q_INVOKABLE void editContact(int index, QString name, QString surname, QString phone);
    Q_INVOKABLE void addContact(QString name, QString surname, QString phone);
private:
    ContactsReader m_contactsReader;
    std::vector<Contact> m_contacts;
    bool updateContacts();

    enum ContactRoles
    {
        NameRole = Qt::UserRole + 1,
        SurnameRole,
        PhoneNumberRole
    };
};

