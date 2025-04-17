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
          color: #c6d0f5;
          background-color: #303446;
          selection-background-color: #767d98;
          selection-color: #c6d0f5;
        }

        QToolBar QWidget {
          background-color: #232634;
        }

        QMenuBar, QToolBar {
          background-color: #232634;
        }

        QTreeWidget#noteTreeWidget {
          background-color: #292c3c;
        }

        QLineEdit#searchLineEdit {
          background-color: #292c3c;
        }

        QWidget:item:selected
        {
          background-color: #767d98;
        }

        `);
    }
}
