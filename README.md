# Robot Framework Demo

Esta demo busca poner a prueba funcionalidades de Google así como del tecDigital. La idea principal es hacer búsquedas simples y enviar un correo a través del tecDigital a la profesora.

Para la ejecución de esta demostración es necesario descargar:

- [Python3](https://www.python.org/downloads/)
- [Robot framework](https://robotframework.org/?tab=1#getting-started)
- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/#installation)
- [Chrome WebDriver](https://chromedriver.chromium.org/downloads)

Y además crear en el directorio ```Resources``` un archivo llamado ```credentials.resource``` con sus respectivas credenciales de la siguiente forma:

      *** Variables ***
      ${email}=       suCorreo@estudiantec.cr
      ${password}=    suContraseña

## Manual de instalación

A continuación se detalla una breve guía de para instalar el entorno de desarrollo tanto para sistemas operativos linux como windows.

### GNU/Linux

- Python3
  
      sudo apt-get update
      sudo apt-get install python3

- Robot Framework

      pip3 install robotframework
      robot --version

- Selenium Library

      pip3 install --upgrade robotframework-seleniumlibrary
      pip3 install --upgrade robotframework-selenium2library

- Chrome WebDriver
Es importante revisar la versión del navegador que estén utilizando, en mi caso es la 105.x...
  - [chromedriver_linux64.zip](https://chromedriver.storage.googleapis.com/105.0.5195.52/chromedriver_linux64.zip)

### Windows

- Python3
  - [Windows installer (32-bit)](https://www.python.org/ftp/python/3.10.7/python-3.10.7.exe)
  - [Windows installer (64-bit)](https://www.python.org/ftp/python/3.10.7/python-3.10.7-amd64.exe)

- Robot Framework

      pip3 install robotframework
      robot --version
- Selenium Library

      pip3 install --upgrade robotframework-seleniumlibrary
      pip3 install --upgrade robotframework-selenium2library

- Chrome WebDriver
  - [chromedriver_win32.zip](https://chromedriver.storage.googleapis.com/105.0.5195.52/chromedriver_win32.zip)
