---
whiskers:
  version: 2.5.1
  matrix:
    - variant: ["themes"]
    - flavor
  filename: "{{variant}}/scripts/{{flavor.identifier}}.qml"
---
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
          color: #{{ text.hex }};
          background-color: #{{ base.hex }};
          selection-background-color: #{{ overlay2 | mix(color=base, amount=0.7) | get(key="hex") }};
          selection-color: #{{ text.hex }};
        }

        QToolBar QWidget {
          background-color: #{{ crust.hex }};
        }

        QMenuBar, QToolBar {
          background-color: #{{ crust.hex }};
        }

        QTreeWidget#noteTreeWidget {
          background-color: #{{ mantle.hex }};
        }

        QLineEdit#searchLineEdit {
          background-color: #{{ mantle.hex }};
        }

        QWidget:item:selected
        {
          background-color: #{{ overlay2 | mix(color=base, amount=0.7) | get(key="hex") }};
        }

        `);
    }
}
