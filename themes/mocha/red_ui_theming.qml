import QtQml 2.0

QtObject {
    /**
     * Adds custom styles
     */
    function init() {
        script.addStyleSheet(`
        QWidget {
          color: #cdd6f4;
          background-color: #1e1e2e;
          selection-background-color: #70748b;
          selection-color: #cdd6f4;
        }
        QWidget:item:selected
        {
          background-color: #70748b;
        }
        QTextEdit {
          background-color: #89b4fa;
          selection-background-color: #f38ba8;
          selection-color: #d19a66;
        }

        `);
    }
}
