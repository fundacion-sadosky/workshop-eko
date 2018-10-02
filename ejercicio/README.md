# Ejercicio: vuln-auth

El archivo [vuln-auth.c](vuln-auth.c) contiene el código de un servidor vulnerable que puede ser explotado en sistemas modernos de 64 bits, incluso con W^X, Stack Protector y ASLR + PIE activos. Estos mecanismos están activos por defecto en la mayoría de las distribuciones modernas de Linux.

Para compilar el programa podemos usar gcc sin ningún recaudo particular:

    gcc vuln-auth.c -o vuln-auth

La idea es comenzar desarrollando mecanismos de lectura que permitan obtener direcciones en cada segmento relevante para poder vencer a ASLR. Luego procedemos desarrollando mecanismos de escritura que permitan inyectar una ROP chain en el stack, para obtener eventual control del procesador.
