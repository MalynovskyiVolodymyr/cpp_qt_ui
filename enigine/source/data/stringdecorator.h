#ifndef STRINGDECORATOR_H
#define STRINGDECORATOR_H

#include <QObject>

class StringDecorator : public QObject
{
    Q_OBJECT
public:
    explicit StringDecorator(QObject *parent = nullptr);

signals:

public slots:
};

#endif // STRINGDECORATOR_H
