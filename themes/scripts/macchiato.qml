import QtQml 2.0

QtObject {
    /**
     * Adds custom styles
     */
    function init() {
        script.addStyleSheet(`
        QSplitter::handle {
          background-color: red; /* Just test with something bold */
        }
        QWidget {
          color: #cad3f5;
          background-color: #24273a;
          selection-background-color: #727891;
          selection-color: #cad3f5;
        }

        QToolBar QWidget {
          background-color: #181926;
        }

        QMenuBar, QToolBar {
          background-color: #181926;
        }

        QTreeWidget#noteTreeWidget {
          background-color: #1e2030;
        }

        QLineEdit#searchLineEdit {
          background-color: #1e2030;
        }

        QWidget:item:selected
        {
          background-color: #727891;
        }

        `);
    }
}
