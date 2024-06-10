/****************************************************************************
** Meta object code from reading C++ file 'backend.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../backend.h"
#include <QtNetwork/QSslPreSharedKeyAuthenticator>
#include <QtNetwork/QSslError>
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'backend.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSBackendENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASSBackendENDCLASS = QtMocHelpers::stringData(
    "Backend",
    "QML.Element",
    "auto",
    "l1Changed",
    "",
    "l2Changed",
    "l3Changed",
    "xChanged",
    "yChanged",
    "zChanged",
    "q1Changed",
    "q2Changed",
    "q3Changed",
    "q4Changed",
    "turnOnLed",
    "turnOffLed",
    "khongGianKhop",
    "q1",
    "q2",
    "q3",
    "q4",
    "khongGianThaoTac",
    "a",
    "b",
    "c",
    "writeToSerialPort",
    "data",
    "closeSerialPort",
    "l1",
    "l2",
    "l3",
    "x",
    "y",
    "z"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSBackendENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       1,   14, // classinfo
      16,   16, // methods
      10,  144, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      10,       // signalCount

 // classinfo: key, value
       1,    2,

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       3,    0,  112,    4, 0x06,   11 /* Public */,
       5,    0,  113,    4, 0x06,   12 /* Public */,
       6,    0,  114,    4, 0x06,   13 /* Public */,
       7,    0,  115,    4, 0x06,   14 /* Public */,
       8,    0,  116,    4, 0x06,   15 /* Public */,
       9,    0,  117,    4, 0x06,   16 /* Public */,
      10,    0,  118,    4, 0x06,   17 /* Public */,
      11,    0,  119,    4, 0x06,   18 /* Public */,
      12,    0,  120,    4, 0x06,   19 /* Public */,
      13,    0,  121,    4, 0x06,   20 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
      14,    0,  122,    4, 0x02,   21 /* Public */,
      15,    0,  123,    4, 0x02,   22 /* Public */,
      16,    4,  124,    4, 0x02,   23 /* Public */,
      21,    3,  133,    4, 0x02,   28 /* Public */,
      25,    1,  140,    4, 0x02,   32 /* Public */,
      27,    0,  143,    4, 0x02,   34 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Float, QMetaType::Float, QMetaType::Float, QMetaType::Float,   17,   18,   19,   20,
    QMetaType::Void, QMetaType::Float, QMetaType::Float, QMetaType::Float,   22,   23,   24,
    QMetaType::Void, QMetaType::QByteArray,   26,
    QMetaType::Void,

 // properties: name, type, flags
      28, QMetaType::Double, 0x00015103, uint(0), 0,
      29, QMetaType::Double, 0x00015103, uint(1), 0,
      30, QMetaType::Double, 0x00015103, uint(2), 0,
      31, QMetaType::Double, 0x00015103, uint(3), 0,
      32, QMetaType::Double, 0x00015103, uint(4), 0,
      33, QMetaType::Double, 0x00015103, uint(5), 0,
      17, QMetaType::Double, 0x00015103, uint(6), 0,
      18, QMetaType::Double, 0x00015103, uint(7), 0,
      19, QMetaType::Double, 0x00015103, uint(8), 0,
      20, QMetaType::Double, 0x00015103, uint(9), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject Backend::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSBackendENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSBackendENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_metaTypeArray<
        // property 'l1'
        double,
        // property 'l2'
        double,
        // property 'l3'
        double,
        // property 'x'
        double,
        // property 'y'
        double,
        // property 'z'
        double,
        // property 'q1'
        double,
        // property 'q2'
        double,
        // property 'q3'
        double,
        // property 'q4'
        double,
        // Q_OBJECT / Q_GADGET
        Backend,
        // method 'l1Changed'
        void,
        // method 'l2Changed'
        void,
        // method 'l3Changed'
        void,
        // method 'xChanged'
        void,
        // method 'yChanged'
        void,
        // method 'zChanged'
        void,
        // method 'q1Changed'
        void,
        // method 'q2Changed'
        void,
        // method 'q3Changed'
        void,
        // method 'q4Changed'
        void,
        // method 'turnOnLed'
        void,
        // method 'turnOffLed'
        void,
        // method 'khongGianKhop'
        void,
        float,
        float,
        float,
        float,
        // method 'khongGianThaoTac'
        void,
        float,
        float,
        float,
        // method 'writeToSerialPort'
        void,
        const QByteArray &,
        // method 'closeSerialPort'
        void
    >,
    nullptr
} };

void Backend::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Backend *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->l1Changed(); break;
        case 1: _t->l2Changed(); break;
        case 2: _t->l3Changed(); break;
        case 3: _t->xChanged(); break;
        case 4: _t->yChanged(); break;
        case 5: _t->zChanged(); break;
        case 6: _t->q1Changed(); break;
        case 7: _t->q2Changed(); break;
        case 8: _t->q3Changed(); break;
        case 9: _t->q4Changed(); break;
        case 10: _t->turnOnLed(); break;
        case 11: _t->turnOffLed(); break;
        case 12: _t->khongGianKhop((*reinterpret_cast< std::add_pointer_t<float>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<float>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<float>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<float>>(_a[4]))); break;
        case 13: _t->khongGianThaoTac((*reinterpret_cast< std::add_pointer_t<float>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<float>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<float>>(_a[3]))); break;
        case 14: _t->writeToSerialPort((*reinterpret_cast< std::add_pointer_t<QByteArray>>(_a[1]))); break;
        case 15: _t->closeSerialPort(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Backend::*)();
            if (_t _q_method = &Backend::l1Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Backend::*)();
            if (_t _q_method = &Backend::l2Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Backend::*)();
            if (_t _q_method = &Backend::l3Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (Backend::*)();
            if (_t _q_method = &Backend::xChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (Backend::*)();
            if (_t _q_method = &Backend::yChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (Backend::*)();
            if (_t _q_method = &Backend::zChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (Backend::*)();
            if (_t _q_method = &Backend::q1Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (Backend::*)();
            if (_t _q_method = &Backend::q2Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (Backend::*)();
            if (_t _q_method = &Backend::q3Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 8;
                return;
            }
        }
        {
            using _t = void (Backend::*)();
            if (_t _q_method = &Backend::q4Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 9;
                return;
            }
        }
    } else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Backend *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< double*>(_v) = _t->l1(); break;
        case 1: *reinterpret_cast< double*>(_v) = _t->l2(); break;
        case 2: *reinterpret_cast< double*>(_v) = _t->l3(); break;
        case 3: *reinterpret_cast< double*>(_v) = _t->x(); break;
        case 4: *reinterpret_cast< double*>(_v) = _t->y(); break;
        case 5: *reinterpret_cast< double*>(_v) = _t->z(); break;
        case 6: *reinterpret_cast< double*>(_v) = _t->q1(); break;
        case 7: *reinterpret_cast< double*>(_v) = _t->q2(); break;
        case 8: *reinterpret_cast< double*>(_v) = _t->q3(); break;
        case 9: *reinterpret_cast< double*>(_v) = _t->q4(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Backend *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setL1(*reinterpret_cast< double*>(_v)); break;
        case 1: _t->setL2(*reinterpret_cast< double*>(_v)); break;
        case 2: _t->setL3(*reinterpret_cast< double*>(_v)); break;
        case 3: _t->setX(*reinterpret_cast< double*>(_v)); break;
        case 4: _t->setY(*reinterpret_cast< double*>(_v)); break;
        case 5: _t->setZ(*reinterpret_cast< double*>(_v)); break;
        case 6: _t->setQ1(*reinterpret_cast< double*>(_v)); break;
        case 7: _t->setQ2(*reinterpret_cast< double*>(_v)); break;
        case 8: _t->setQ3(*reinterpret_cast< double*>(_v)); break;
        case 9: _t->setQ4(*reinterpret_cast< double*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *Backend::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Backend::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSBackendENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Backend::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 16)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 16;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 16)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 16;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    }
    return _id;
}

// SIGNAL 0
void Backend::l1Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Backend::l2Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Backend::l3Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void Backend::xChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void Backend::yChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void Backend::zChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void Backend::q1Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void Backend::q2Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void Backend::q3Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}

// SIGNAL 9
void Backend::q4Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 9, nullptr);
}
QT_WARNING_POP
