#ifndef ENUMERATORDECORATOR_H
#define ENUMERATORDECORATOR_H

#include <QObject>

class EnumeratorDecorator : public QObject
{
    Q_OBJECT
public:
    explicit EnumeratorDecorator(QObject *parent = nullptr);

signals:

public slots:
};

#endif // ENUMERATORDECORATOR_H
