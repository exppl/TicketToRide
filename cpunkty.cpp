#include "cpunkty.h"

CPunkty::CPunkty(QObject *parent) : QObject(parent)
{
    m_finalValue = 0;
}

void CPunkty::DodajWartosc()
{
    m_finalValue+=1;
}
