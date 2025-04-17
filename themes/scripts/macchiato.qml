import QtQml 2.0

QtObject {
    /**
     * Adds custom styles
     */
    function init() {
        script.addStyleSheet(`
        QWidget {
          color: #cad3f5;
          background-color: #24273a;
          selection-background-color: #727891;
          selection-color: #cad3f5;
        }
        QWidget:item:selected
        {
          background-color: #727891;
        }


        `);
    }
}
