Esta es una opción para construir el entorno de desarrollo que usamos en
Kleer (ruby, heroku, travis-ci).

Lo primero que debes hacer es clonar este repo en tu sistema. Yo lo he probado
en Ubuntu.

Luego instalas Vagrant con este comando:

sudo apt-get install vagrant

Te recomiendo el siguiente paso que, aunque no es obligatorio, es conveniente
pues instala el plugin que instala o actualiza las VirtualBox Guest Additions
dentro de la máquina virtual.

vagrant plugin install vagrant-vbguest

Luego descargas el box en el cual se basa este Vagrant file.

vagrant box add npalm/mint17-amd64-cinnamon

Por último, en el directorio donde está el Vagrantfile, ejecutas:

vagrant up

Cuando ha terminado, detienes la máquina virtual con este comando:

vagrant halt

Inicia la VM desde VirtualBox, probablemente debas desactivar el modo
full-screen que parece viene activado en el box.

Es importante iniciar sesión en la VM antes de los próximos pasos, aparentemente
Mint realiza algunas configuraciones adicionales en el primer inicio de X.

Luego de iniciar la VM es necesario configurar la Terminal en modo login-shell,
para eso debes iniciar una consola (Ctrl-Alt-T), click con el botón secundario
en el área de la ventana, Profile -> Profile Preferences.

Luego, marcar el tilde "Run command as a login shell" (esto es necesario para
que funcione rvm). Cierras el Terminal.

Vuelves a abrir Terminal.

Si tienes telclado latinoamericano, ejecuta:

sudo setxkbmap latam

Luego ejecutas el comando:

./bootstrap.sh

Este script tomará varios minutos. Elimina ciertos paquetes no necesarios para
el desarrollo e instala otros, entre ellos rvm y las versiones de Ruby necesarias.
