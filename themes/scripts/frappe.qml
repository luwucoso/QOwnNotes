import QtQml 2.0

QtObject {
    /**
     * Adds custom styles
     */
    function init() {
        script.addStyleSheet(`
        QWidget {
          color: #c6d0f5;
          background-color: #303446;
          selection-background-color: #767d98;
          selection-color: #c6d0f5;
        }
        QWidget:item:selected
        {
          background-color: #767d98;
        }


        `);
    }
}
