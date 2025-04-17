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
          color: #4c4f69;
          background-color: #eff1f5;
          selection-background-color: #9ea1b0;
          selection-color: #4c4f69;
        }

        QToolBar QWidget {
          background-color: #dce0e8;
        }

        QMenuBar, QToolBar {
          background-color: #dce0e8;
        }

        QTreeWidget#noteTreeWidget {
          background-color: #e6e9ef;
        }

        QLineEdit#searchLineEdit {
          background-color: #e6e9ef;
        }

        QWidget:item:selected
        {
          background-color: #9ea1b0;
        }

        `);
    }
}
