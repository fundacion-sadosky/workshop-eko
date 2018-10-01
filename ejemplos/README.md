# Ejemplos

En este directorio iremos subiendo varios ejemplos de explotación en diversos escenarios.

Para reproducir las demos es necesario instalar un software llamado **asciinema**; la aplicación es de código abierto y se encuentra
disponible en los repositorios de Ubuntu. Los demos de asciinema son grabaciones textuales de una sesión en una terminal;
es decir, asciinema graba los caracteres con un timestamp a medida que van siendo impresos en pantalla.
La reproducción consiste simplemente en la emisión de los caracteres guardados, uno por uno, en los instantes adecuados.

Por ejemplo, para reproducir la demo `demo-payload-gen` con asciinema, ejecutamos:

    asciinema play demo-payload-gen

Para pausar la reproducción podemos usar la tecla espacio.


## Demos

* **Generación de un shellcode binario** (demo-payload-gen): 
Esta demo muestra cómo, dado un programa en assembly, es posible generar un payload
binario utilizando nasm, ld y objcopy. También muestra cómo podemos desensamblar un shellcode binario para analizar su comportamiento.
Las herramientas utilizadas son las que se encuentran en el directorio payload-generator. Adicionalmente, en el directorio
hay un script ruby-fmt.rb que toma un payload binario y genera un string de Ruby que puede ser inyectado en scripts escritos en este
lenguaje para automatizar tareas de explotación.
