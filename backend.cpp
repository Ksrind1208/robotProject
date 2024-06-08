#include "Backend.h"
#include <sstream>
#include <string>
#include <iomanip>
Backend::Backend(QObject *parent) : QObject(parent), m_l1(0), m_l2(0), m_l3(0), m_x(0), m_y(0), m_z(0), m_q1(0), m_q2(0), m_q3(0), m_q4(0)
{
    m_l2=8;
    m_l3=8;
    serialPort.setPortName("COM3");
    bool success = serialPort.open(QSerialPort::ReadWrite);
    serialPort.setBaudRate(QSerialPort::Baud9600);
    serialPort.setDataBits(QSerialPort::Data8);
    serialPort.setParity(QSerialPort::NoParity);
    serialPort.setStopBits(QSerialPort::OneStop);
    serialPort.setFlowControl(QSerialPort::NoFlowControl);
    if (success) {
        qDebug() << "Serial port is opened";
    }else{
        qDebug()<<"Serial port is not available";
    }
}

double Backend::l1()
{
    return m_l1;
}

void Backend::setL1(double l1)
{
    if (m_l1 != l1) {
        m_l1 = l1;
        emit l1Changed();
    }else{
        return;
    }
}

double Backend::l2()
{
    return m_l2;
}

void Backend::setL2(double l2)
{
    if (m_l2 != l2) {
        m_l2 = l2;
        emit l2Changed();
    }else{
        return;
    }
}

double Backend::l3()
{
    return m_l3;
}

void Backend::setL3(double l3)
{
    if (m_l3 != l3) {
        m_l3 = l3;
        emit l3Changed();
    }else{
        return;
    }
}

double Backend::x()
{
    return m_x;
}

void Backend::setX(double x)
{
    if (m_x != x) {
        m_x = x;
        emit xChanged();
    }else{
        return;
    }
}

double Backend::y()
{
    return m_y;
}

void Backend::setY(double y)
{
    if (m_y != y) {
        m_y = y;
        emit yChanged();
    }else{
        return;
    }
}

double Backend::z()
{
    return m_z;
}

void Backend::setZ(double z)
{
    if (m_z != z) {
        m_z = z;
        emit zChanged();
    }else{
        return;
    }
}

double Backend::q1()
{
    return m_q1;
}

void Backend::setQ1(double q1)
{
    if (m_q1 != q1) {
        m_q1 = q1;
        emit q1Changed();
    }else{
        return;
    }
}

double Backend::q2()
{
    return m_q2;
}

void Backend::setQ2(double q2)
{
    if (m_q2 != q2) {
        m_q2 = q2;
        emit q2Changed();
    }else{
        return;
    }
}

double Backend::q3()
{
    return m_q3;
}

void Backend::setQ3(double q3)
{
    if (m_q3 != q3) {
        m_q3 = q3;
        emit q3Changed();
    }else{
        return;
    }
}

double Backend::q4()
{
    return m_q4;
}

void Backend::setQ4(double q4)
{
    if (m_q4 != q4) {
        m_q4 = q4;
        emit q4Changed();
    }else{
        return;
    }
}

void Backend::turnOnLed()
{
    writeToSerialPort("on\n");
}

void Backend::turnOffLed()
{
    writeToSerialPort("off\n");
}

void Backend::khongGianKhop(float q1,float q2,float q3,float q4)
{
}

void Backend::khongGianThaoTac(float a,float b,float c)
{
    float q1 = atan2(b, a);
    float x2 = a / cos(q1);
    float r = sqrt(x2*x2 + c*c);
    float D = (r*r - m_l3*m_l3 - m_l2*m_l2) / (2 * m_l3 * m_l2);
    float q3 = atan2(-sqrt(1-D*D),D);
    float q2 = atan2(c,x2) - q3 / 2;
    m_q1 = round((q1 * 180 / 3.14)*100.0)/100.0;
    m_q2 = round((90 - q2 * 180 / 3.14)*100.0)/100.0;
    m_q3 = round((105 + q2* 180 / 3.14 + q3* 180 / 3.14)*100.0)/100.0;
    m_q4=130;
    m_x=round(a*100.0)/100.0;
    m_y=round(b*100.0)/100.0;
    m_z=round(c*100.0)/100.0;
}

void Backend::writeToSerialPort(const QByteArray &data)
{
    serialPort.write(data);
}

void Backend::closeSerialPort()
{
    if (serialPort.isOpen()) {
        serialPort.close();
        qDebug() << "Serial port is closed";
    }
}


