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
          color: #cdd6f4;
          background-color: #1e1e2e;
          selection-background-color: #70748b;
          selection-color: #cdd6f4;
        }

        QToolBar QWidget {
          background-color: #11111b;
        }

        QMenuBar, QToolBar {
          background-color: #11111b;
        }

        QTreeWidget#noteTreeWidget {
          background-color: #181825;
        }

        QLineEdit#searchLineEdit {
          background-color: #181825;
        }

        QWidget:item:selected
        {
          background-color: #70748b;
        }

        `);
    }
}
