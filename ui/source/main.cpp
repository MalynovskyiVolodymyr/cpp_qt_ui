#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <controllers/mastercontroller.h>
#include <controllers/navigationcontroller.h>
#include <controllers/commandcontroller.h>
#include <framework/command.h>
#include <models/client.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    qmlRegisterType<enigine::controllers::MasterController>("CM", 1, 0, "MasterController");
    qmlRegisterType<enigine::controllers::NavigationController>("CM", 1, 0, "NavigationController");
    //qmlRegisterType<enigine::models::Client>("CM", 1, 0, "Client");

    qmlRegisterType<enigine::controllers::CommandController>("CM", 1, 0, "CommandController");
    qmlRegisterType<enigine::framework::Command>("CM", 1, 0, "Command");


    // master root Context of the app
    enigine::controllers::MasterController masterController;
    //

    QQmlApplicationEngine engine;
    //
    engine.addImportPath("qrc:/");
    engine.rootContext()->setContextProperty("masterController", &masterController);
    //

    //const QUrl url(QStringLiteral("qrc:/views/MasterView.qml"));

    //anchors test
    //const QUrl url(QStringLiteral("qrc:/views/AnchorsTest.qml"));
    //

    //sizing test
    //const QUrl url(QStringLiteral("qrc:/views/AnSizingTest.qml"));
    //

    //new design test
    //const QUrl url(QStringLiteral("qrc:/wui/View.qml"));

    const QUrl url(QStringLiteral("qrc:/gallery/gallery.qml"));

    //const QUrl url(QStringLiteral("qrc:/wmui/main.qml"));

    engine.load(url);
    if(engine.rootObjects().isEmpty()){
        return -1;
    }

    return app.exec();
}
