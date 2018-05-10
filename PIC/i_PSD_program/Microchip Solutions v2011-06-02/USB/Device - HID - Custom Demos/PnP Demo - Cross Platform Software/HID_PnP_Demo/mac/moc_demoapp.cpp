/****************************************************************************
** Meta object code from reading C++ file 'demoapp.h'
**
** Created: Mon Jan 10 15:10:16 2011
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../demoapp.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'demoapp.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_DemoApp[] = {

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
       9,    8,    8,    8, 0x05,

 // slots: signature, parameters, type, tag, flags
      79,   38,    8,    8, 0x0a,
     105,    8,    8,    8, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_DemoApp[] = {
    "DemoApp\0\0toggle_leds_button_pressed()\0"
    "isConnected,isPressed,potentiometerValue\0"
    "update_gui(bool,bool,int)\0"
    "on_pushButton_clicked()\0"
};

const QMetaObject DemoApp::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_DemoApp,
      qt_meta_data_DemoApp, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &DemoApp::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *DemoApp::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *DemoApp::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_DemoApp))
        return static_cast<void*>(const_cast< DemoApp*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int DemoApp::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: toggle_leds_button_pressed(); break;
        case 1: update_gui((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 2: on_pushButton_clicked(); break;
        default: ;
        }
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void DemoApp::toggle_leds_button_pressed()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}
QT_END_MOC_NAMESPACE
