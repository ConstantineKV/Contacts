#pragma once
#include <QString>

class Contact
{
public:
    Contact();
    Contact(const QString& firstName, const QString& surname, QString phone);

    const QString &phone() const;


    const QString &firstName() const;


    const QString &surname() const;


public:
    void setPhone(QString phone);
    void setFirstName(QString name);
    void setSurname(QString surname);
private:
    QString m_phone;
    QString m_firstName;
    QString m_surname;

};


