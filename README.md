# Kleer virtual machines

Esta es una opción para construir los entornos de desarrollo que usamos en
Kleer en los talleres de Desarrollo Ágile de Software (ruby, sinatra, jenkins).

Dado que este script se basa en Vagrant, debes instalarlo:

    sudo apt-get install vagrant

Luego descargas el box en el cual se basa este Vagrant file, es una máquina 
basada en Mint 17 y Cinnamon

    vagrant box add npalm/mint17-amd64-cinnamon


> ### Un plugin interesante
> 
> Te recomiendo el siguiente paso que, aunque no es obligatorio, es conveniente
> pues instala el plugin que instala o actualiza las VirtualBox Guest Additions
> dentro de la máquina virtual.
> 
>     vagrant plugin install vagrant-vbguest


Hasta este punto tienes Vagrant listo. Lo que sigue es clonar este repositorio 
en tu sistema. Por ejemplo con este comando:

    git clone https://github.com/kleer-la/virtual-machines.git

Luego te mueves a la carpeta que contiene el Vagrantfile, por ejemplo:

    cd virtual-machines/csd-box

Por último, en el directorio donde encuentras el Vagrantfile, ejecutas:

    vagrant up

Cuando ha terminado, detienes la máquina virtual con este comando:

    vagrant halt

> Es importante reiniciar sesión en la VM antes de los próximos pasos, aparentemente
> Mint realiza algunas configuraciones adicionales en el primer inicio de X.

Inicia la VM desde la UI de VirtualBox (el nombre es kleer-csd-box) y el usuario y clave 
es vagrant/vagrant

> Probablemente debas desactivar el modo full-screen que parece viene activado en el box.

Luego de iniciar la VM es necesario configurar la Terminal en modo login-shell,
para eso debes iniciar una consola (Ctrl-Alt-T), click con el botón secundario
en el área de la ventana, Profile -> Profile Preferences.

Marcas el tilde "Run command as a login shell" (esto es necesario para
que funcione rvm). Cierras el terminal y vuelves a abrirl.

> ### ¿Opciones para el teclado?
> Puedes configurar el teclado desde la UI de Cinnamon, es lo más simple. Sugiero dejar 
> activas, al menos, la distribución en inglés de teclado y español latam.
> 
> Por último, puedes actualizar el sistema operativo desde las opciones usuales

En caso de que desees exportar la VM desde VirtualBox

Antes de cerrar la máquina virtual, en una consola ejecuta el siguiente comando para
reducir lo máximo posible el tamaño de la máquina virtual.

    ./clean.sh

Luego apagas la máquina virtual y la exportas desde VirtualBox. Debes marcar la máquina
en la lista y luego opción File > Export Appliance (o similar en español).

Al dia de hoy y luedo de actualizar el sistema operativo, debería quedar un archivo
kleer-csd-box.ova de 1.9GB

## Temas específicos para trainers

En el caso de usar esta VM para el trainer, recomiendo configurar 1.5GB de RAM
y ejecutar el script setup-trainer.sh que instala Jenkins.

También recomiendo acceder a Jenkins desde el host para ahorrar memoria en la VM.
