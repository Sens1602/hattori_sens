/****************************************************************************
** Meta object code from reading C++ file 'hid_pnp.h'
**
** Created: Mon Jan 10 15:03:04 2011
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../hid_pnp.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'hid_pnp.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_HID_PnP[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      50,    9,    8,    8, 0x05,

 // slots: signature, parameters, type, tag, flags
      81,    8,    8,    8, 0x0a,
      95,    8,    8,    8, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_HID_PnP[] = {
    "HID_PnP\0\0isConnected,isPressed,potentiometerValue\0"
    "hid_comm_update(bool,bool,int)\0"
    "toggle_leds()\0PollUSB()\0"
};

const QMetaObject HID_PnP::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_HID_PnP,
      qt_meta_data_HID_PnP, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &HID_PnP::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *HID_PnP::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *HID_PnP::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_HID_PnP))
        return static_cast<void*>(const_cast< HID_PnP*>(this));
    return QObject::qt_metacast(_clname);
}

int HID_PnP::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: hid_comm_update((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 1: toggle_leds(); break;
        case 2: PollUSB(); break;
        default: ;
        }
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void HID_PnP::hid_comm_update(bool _t1, bool _t2, int _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
