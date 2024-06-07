#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>
#include <QtQml>

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double l1 READ l1 WRITE setL1 NOTIFY l1Changed)
    Q_PROPERTY(double l2 READ l2 WRITE setL2 NOTIFY l2Changed)
    Q_PROPERTY(double l3 READ l3 WRITE setL3 NOTIFY l3Changed)
    Q_PROPERTY(double x READ x WRITE setX NOTIFY xChanged)
    Q_PROPERTY(double y READ y WRITE setY NOTIFY yChanged)
    Q_PROPERTY(double z READ z WRITE setZ NOTIFY zChanged)
    Q_PROPERTY(double q1 READ q1 WRITE setQ1 NOTIFY q1Changed)
    Q_PROPERTY(double q2 READ q2 WRITE setQ2 NOTIFY q2Changed)
    Q_PROPERTY(double q3 READ q3 WRITE setQ3 NOTIFY q3Changed)
    Q_PROPERTY(double q4 READ q4 WRITE setQ4 NOTIFY q4Changed)
    QML_ELEMENT
public:
    explicit Backend(QObject *parent = nullptr);

    // Getters and setters for the double properties
    double l1();
    void setL1(double l1);

    double l2();
    void setL2(double l2);

    double l3();
    void setL3(double l3);

    double x();
    void setX(double x);

    double y();
    void setY(double y);

    double z();
    void setZ(double z);

    double q1();
    void setQ1(double q1);

    double q2();
    void setQ2(double q2);

    double q3();
    void setQ3(double q3);

    double q4();
    void setQ4(double q4);

    // Function to calculate sum of two doubles
    Q_INVOKABLE double sum(double a, double b);

signals:
    void l1Changed();
    void l2Changed();
    void l3Changed();
    void xChanged();
    void yChanged();
    void zChanged();
    void q1Changed();
    void q2Changed();
    void q3Changed();
    void q4Changed();

private:
    double m_l1;
    double m_l2;
    double m_l3;
    double m_x;
    double m_y;
    double m_z;
    double m_q1;
    double m_q2;
    double m_q3;
    double m_q4;
};

#endif // BACKEND_H
