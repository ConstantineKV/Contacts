#include "contact.h"

Contact::Contact()
{

}

Contact::Contact(const QString& firstName, const QString& surname, QString phone) : m_firstName {std::move(firstName)}, m_surname {std::move(surname)}, m_phone {std::move(phone)}
{

}

const QString &Contact::phone() const
{
    return m_phone;
}

const QString &Contact::firstName() const
{
    return m_firstName;
}

const QString &Contact::surname() const
{
    return m_surname;
}

void Contact::setPhone(QString phone)
{
    m_phone = phone;
}

void Contact::setFirstName(QString name)
{
    m_firstName = name;
}

void Contact::setSurname(QString surname)
{
    m_surname = surname;
}
