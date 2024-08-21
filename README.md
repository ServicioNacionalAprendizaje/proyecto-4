# Tienda Online en django 

## Instrucciones para la instalación de paquetes

El codigo fuente de la aplicación se encuentra en la carpeta Ferreteria.
Para la instalación de paquetes debemos seguir las instrucciones a continuación:
- Abrir la carpeta Ferreteria con el IDE de preferencia
- Abrir la terminal y ejecutar el comando __python -m venv myapp__ . Este comando creara un entorno 
virtual llamado myapp.
- __Activar el entorno virtual__: Desde la terminal abrimos la carpeta de 
nuestro entorno virtual (myapp), y luego abrimos la carpeta Scripts. La ruta seria esta: Ferreteria\myapp\Scripts>
- Ahora escribimos el comando: activate (si activate no funciona prueba con .\activate).
- Para desactivar el entorno virtual dirijase a la misma ruta donde activo el entorno virtual y escriba el comando: __deactivate__

- Una vez activado el entorno virtual, regresamos a la carpeta Ferreteria (donde se encuentra el archivo requirement.txt) y ejecutamos
el comando: __pip install -r "requirements.txt"__ 

## Crear las migraciones

En el paso anterior instalamos los paquetes necesarios para correr la aplicación, ahora
ejecutaremos dos comandos para mantener la integridad de los datos. 

En la carpeta Ferreteria ejecutamos los siguientes comandos:
- Ejecutar el comando __python manage.py makemigrations__
- Ejecutar el comando __python manage.py migrate__


## Iniciar la aplicación
En la carpeta Ferreteria ejecutamos el comando: __python manage.py runserver__
__IMPORTANTE__: Es necesario activar el entorno virtual antes de iniciar la aplicación o instalar nuevos paquetes.


## Usuario administrador
Para acceder a la consola de administración es necesario tener un usuario administrador.
- Django nos permite crear uno escribiendo el comando:  __python manage.py createsuperuser__. Siga las indicaciones para crear el usuario.
- Para acceder a la consola de administracion solo debe escribir admin junto a la dirección de la pagina: http://127.0.0.1:8000/admin/

## Solución de problemas

## Error al intentar conectarse a la base de datos
- Asegúrate de que el servicio de MySQL esté en ejecución. Si MySQL no está en ejecución inicielo.
- Asegúrate de que la configuración de la base de datos sea correcta:
En la carpeta Ferreteria abra la carpeta ecommerce y busque el archivo __settings.py__. Dentro de settings busque __DATABASES__.

- __DATABASE_NAME__: Le indica a Django el nombre de tu base de datos.
- __DATABASE_USER__: Le indica a Django cual es el nombre de usuario a usar cuando se conecte con tu base de datos.
- __DATABASE_PASSWORD__: Le indica a Django cual es la contraseña a utilizar cuando se conecte con tu base de datos.
- __DATABASE_HOST__: Le indica a Django cual es el host a usar cuando se conecta a tu base de datos. Si tu base de datos está sobre la misma computadora que la instalación de Django (o sea localhost), escribe 'localhost'.
- __DATABASE_PORT__: Le indica a Django qué puerto usar cuando se conecte a la base de datos. MySQL usa por defecto el puerto 3306. 
