%Module(name=GLWidget, call_super_init=True, keyword_arguments="Optional")
%DefaultMetatype PyQt5.QtCore.pyqtWrapperType
%DefaultSupertype sip.simplewrapper

%Import QtGui/QtGuimod.sip
%Import QtWidgets/QtWidgetsmod.sip
%Import QtOpenGL/QtOpenGLmod.sip

%If (Qt_5_0_0 -)

class GLWidget : public QOpenGLWidget, protected QOpenGLFunctions {

%TypeHeaderCode
#include "glwidget.h"
#include "logo.h"
%End

public:
    GLWidget(QWidget *parent /TransferThis/ = 0);
    ~GLWidget();

public slots:
    void setXRotation(int angle);
    void setYRotation(int angle);
    void setZRotation(int angle);
    void cleanup();

signals:
    void xRotationChanged(int angle);
    void yRotationChanged(int angle);
    void zRotationChanged(int angle);

protected:
    void initializeGL();
    void paintGL();
    void resizeGL(int width, int height);
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);

private:
    void setupVertexAttribs();


};

%End