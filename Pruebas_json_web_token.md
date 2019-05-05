### Pruebas funcionamiento Json Web Token

Primero que todo, se debe tener el servidor de rails corriendo con *$ rails s*

Como no se tiene ningún usuario creado, debemos crear un usuario mediante la consola de Rails:
![](/readme_doc/img_01.png)

Una vez creado el usuario, ingresaremos las credenciales del usuario creado anteriormente mediante CURL, el cual comprobará si nuestras credenciales de acceso son correctas. Si las credenciales son correctas, nos generará un token de autorización:
![](/readme_doc/img_02.png)

Luego comprobaremos si el token de autorización corresponde al usuario según número de **id** en la página *https://jwt.io/*
![](/readme_doc/img_03.png)

### Pruebas de funcionamiento utilizando complemento POSTMAN

Utilizaremos el complemento de Google Chrome llamado **Tabbed Postman**

Comprobaremos el acceso de un usuario usando las credenciales correctas y usando el verbo POST, el cual nos generará un token de autorización si todo es correcto:
![](/readme_doc/img_04.png)

Ahora ingreseramos a *http://localhost:3000/api/categories* con el verbo GET, el cual nos mostrara un error de *No autorizado* ya que no ingresamos mediante un token de autorización.
![](/readme_doc/img_05.png)

Esta vez ingresaremos con un token de autorización y nos dará acceso a la información:
![](/readme_doc/img_06.png)