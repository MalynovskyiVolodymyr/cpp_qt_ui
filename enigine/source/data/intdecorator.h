#ifndef INTDECORATOR_H
#define INTDECORATOR_H

#include <QObject>

class IntDecorator : public QObject
{
    Q_OBJECT
public:
    explicit IntDecorator(QObject *parent = nullptr);

signals:

public slots:
};

#endif // INTDECORATOR_H
