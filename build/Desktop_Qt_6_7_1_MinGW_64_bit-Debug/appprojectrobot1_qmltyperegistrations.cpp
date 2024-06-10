/****************************************************************************
** Generated QML type registration code
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <QtQml/qqml.h>
#include <QtQml/qqmlmoduleregistration.h>

#include <backend.h>


#if !defined(QT_STATIC)
#define Q_QMLTYPE_EXPORT Q_DECL_EXPORT
#else
#define Q_QMLTYPE_EXPORT
#endif
Q_QMLTYPE_EXPORT void qml_register_types_projectRobot1()
{
    qmlRegisterTypesAndRevisions<Backend>("projectRobot1", 1);
    qmlRegisterModule("projectRobot1", 1, 0);
}

static const QQmlModuleRegistration projectRobot1Registration("projectRobot1", qml_register_types_projectRobot1);
