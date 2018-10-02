# Ejemplos

En este directorio iremos subiendo varios ejemplos de explotación en diversos escenarios.

Para reproducir las demos es necesario instalar un software llamado **asciinema**; la aplicación es de código abierto y se encuentra disponible en los repositorios de Ubuntu. Los demos de asciinema son grabaciones textuales de una sesión en una terminal; es decir, asciinema graba los caracteres con un timestamp a medida que van siendo impresos en pantalla. La reproducción consiste simplemente en la emisión de los caracteres guardados, uno por uno, en los instantes adecuados.

Por ejemplo, para reproducir la demo `demo-payload-gen` con asciinema, ejecutamos:

    asciinema play demo-payload-gen

Para pausar la reproducción podemos usar la tecla espacio.


## Demos

* **Generación de un shellcode binario** (demo-payload-gen): Esta demo muestra cómo, dado un programa en assembly, es posible generar un payload binario utilizando nasm, ld y objcopy. También muestra cómo podemos desensamblar un shellcode binario para analizar su comportamiento. Las herramientas utilizadas son las que se encuentran en el directorio payload-generator. Adicionalmente, en el directorio hay un script ruby-fmt.rb que toma un payload binario y genera un string de Ruby que puede ser inyectado en scripts escritos en este lenguaje para automatizar tareas de explotación.

* **Explotación con ret2libc** (demo-ret2libc): Esta demo muestra cómo llevar a cabo una explotación básica aplicando ret2libc para hacer al stack ejecutable, siendo W^X la única mitigación habilitada. Utilizamos el script ret2libc.rb para generar un exploit que hace que el programa vulnerable stack5 muestre un mensaje "Hello, world!" en la pantalla. Previo a la ejecución, utilizamos gdb para determinar algunos parámetros necesarios para configurar el script, como la distancia desde el buffer hasta la dirección de retorno y la dirección de mprotect. Es importante mencionar que las direcciones varían de sistema a sistema y son muy dependientes del entorno; para desarrollar exploits robustos que funcionan en sistemas modernos suele ser necesario incorporar otras técnicas.

* **Return Oriented Programming** (demo-rop): Esta demo muestra la ejecución de una ROP chain con gdb. Contamos con un programa vulnerable, esencialmente el mismo utilizado en el ejemplo anterior, con algunas funciones adicionales que proveen gadgets para facilitar el desarrollo del exploit. Luego utilizamos un script de Ruby para generar el exploit, y mostramos cómo la ejecución evoluciona dentro del entorno de gdb, paso a paso, habiendo provisto el exploit al programa por entrada estándar.

