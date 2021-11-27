#include "contactsreader.h"

namespace
{
const std::vector<Contact> mockData
{
    {"Wylie", "Johns", "38602342342"},
    {"Asher", "Blankenship", "38602342342"},
    {"Eric", "French", "3312313432432"},
    {"Michael", "Cooper", "3423423423"},
    {"Ulric", "Shepherd", "3234234"},
    {"Lionel", "Holt", "323423423423"},
    {"Aquila", "Tanner", "23234234234"},
    {"Lee", "Booth", "323423423423"},
    {"Drew", "Branch", "3234234234234"},
    {"Francis", "Buckley", "3234234234"},
    {"Stuart", "Wright", "3234234234234"},
    {"Leonard", "Tanner", "32342342342"},
    {"Cristopher", "Dillon", "3234234235345"},
};
}
std::pair<bool, std::vector<Contact> > ContactsReader::requestContactsBrowse()
{
    return std::make_pair(true, mockData);
}
