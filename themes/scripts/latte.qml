import QtQml 2.0

QtObject {
    /**
     * Adds custom styles
     */
    function init() {
        script.addStyleSheet(`
        QWidget {
          color: #4c4f69;
          background-color: #eff1f5;
          selection-background-color: #9ea1b0;
          selection-color: #4c4f69;
        }
        QWidget:item:selected
        {
          background-color: #9ea1b0;
        }


        `);
    }
}
