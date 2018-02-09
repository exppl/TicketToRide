#ifndef CPUNKTY_H
#define CPUNKTY_H

#include <QObject>
#include <QWidget>

class CPunkty : public QObject
{
    Q_OBJECT
public:
    explicit CPunkty(QObject *parent = 0);
    Q_INVOKABLE void DodajWartosc();
    int m_finalValue;
signals:

public slots:
};

#endif // CPUNKTY_H
