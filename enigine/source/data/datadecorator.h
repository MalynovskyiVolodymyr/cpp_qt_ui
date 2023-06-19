#ifndef DATADECORATOR_H
#define DATADECORATOR_H

#include <QObject>

class DataDecorator : public QObject
{
    Q_OBJECT
public:
    explicit DataDecorator(QObject *parent = nullptr);

signals:

public slots:
};

#endif // DATADECORATOR_H
