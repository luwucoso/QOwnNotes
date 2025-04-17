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


        `);
    }
}
