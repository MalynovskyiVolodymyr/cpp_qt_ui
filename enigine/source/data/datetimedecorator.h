#ifndef DATETIMEDECORATOR_H
#define DATETIMEDECORATOR_H

#include <QObject>

class DateTimeDecorator : public QObject
{
    Q_OBJECT
public:
    explicit DateTimeDecorator(QObject *parent = nullptr);

signals:

public slots:
};

#endif // DATETIMEDECORATOR_H
