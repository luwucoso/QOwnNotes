---
whiskers:
  version: 2.5.1
  matrix:
    - variant: ["themes"]
    - flavor
    - accent
  filename: "{{variant}}/{{flavor.identifier}}/{{accent}}_ui_theming.qml"
---
import QtQml 2.0

QtObject {
    /**
     * Adds custom styles
     */
    function init() {
        script.addStyleSheet(`
        QWidget {
          color: #{{ text.hex }};
          background-color: #{{ base.hex }};
          selection-background-color: #{{ overlay2 | mix(color=base, amount=0.7) | get(key="hex") }};
          selection-color: #{{ text.hex }};
        }
        QWidget:item:selected
        {
          background-color: #{{ overlay2 | mix(color=base, amount=0.7) | get(key="hex") }};
        }
        QTextEdit {
          background-color: #{{ blue.hex }};
          selection-background-color: #{{ red.hex }};
          selection-color: #d19a66;
        }

        `);
    }
}
