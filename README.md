### BlogApp

Este proyecto consiste en una aplicación web desarrollada en Ruby on Rails que permite gestionar posts y comentarios. A continuación, se detallan las instrucciones para la instalación y ejecución del proyecto, así como una breve descripción de las funcionalidades implementadas.

#### Instrucciones Generales

1. **Tiempo**: 3 días hábiles.
2. **Repositorio**: El código fuente debe entregarse en un repositorio de GitHub o GitLab.
3. **Instalación y Ejecución**: Proporcionar instrucciones claras para instalar y ejecutar el proyecto.
4. **Documentación y Comentarios**: Incluir documentación y comentarios en el código para facilitar la revisión.

#### Parte 1: Manejo de Ruby y Framework

**Ejercicio 1: Configuración del Proyecto**
- Crear una nueva aplicación Rails llamada BlogApp.
- Configurar la base de datos para que utilice PostgreSQL.
- Agregar el gem pry-rails al grupo de desarrollo y prueba.

**Ejercicio 2: Modelos y Migraciones**
- Crear un modelo Post con los atributos: title (string), body (text), published_at (datetime).
- Crear un modelo Comment con los atributos: content (text), post_id (integer).
- Establecer la relación de que un Post tiene muchos Comments, y un Comment pertenece a un Post.

**Ejercicio 3: Controladores y Rutas**
- Crear un controlador PostsController con las acciones estándar (index, show, new, create, edit, update, destroy).
- Configurar las rutas para que soporten todas las acciones CRUD para Post.
- Implementar la acción index para mostrar todos los posts.

**Ejercicio 4: Vistas y Formularios**
- Crear una vista para la acción index que liste todos los posts con sus títulos y fechas de publicación.
- Crear una vista para la acción new con un formulario para crear un nuevo post.
- Asegurar que el formulario incluya campos para title, body, y published_at.

**Ejercicio 5: Autenticación**
- Agregar el gem devise al Gemfile e instalar las dependencias.
- Configurar devise en la aplicación y generar el modelo User.
- Asegurar que solo los usuarios autenticados puedan crear, editar o eliminar posts.

#### Instalación y Ejecución

1. Clona el repositorio desde GitHub o GitLab.
2. Navega hasta el directorio de la aplicación (BlogApp).
3. Ejecuta bundle install para instalar las gemas necesarias.
4. Configura el archivo config/database.yml para establecer la conexión con PostgreSQL.
5. Ejecuta rails db:create para crear la base de datos.
6. Ejecuta rails db:migrate para ejecutar las migraciones.
7. Inicia el servidor Rails con rails server.
8. Abre tu navegador web y accede a http://localhost:3000 para interactuar con la aplicación.
