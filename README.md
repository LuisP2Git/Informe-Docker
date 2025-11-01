# README.md — Informe técnico sobre Docker

## 🐳 Introducción
En este informe presento un resumen de los conceptos aprendidos en los videos sobre **Docker**, así como algunas reflexiones personales y un ejemplo práctico donde aplico lo aprendido.  
El objetivo es entender qué son los **contenedores**, cómo se usan, y por qué son tan útiles en el desarrollo actual.

---

## 🎥 1. Resumen de los videos

### 📘 Video 1: *¿Qué es Docker y para qué sirve?*
En este video se explica que Docker es una herramienta que permite **crear y ejecutar contenedores**, los cuales son como “cajas” que contienen todo lo necesario para que una aplicación funcione (código, dependencias, librerías y sistema base).  
Aprendí que los contenedores son **más ligeros que las máquinas virtuales**, porque todos comparten el mismo sistema operativo, pero cada uno mantiene su propio entorno aislado.

También se mencionó:
- Las **imágenes** son plantillas para crear contenedores.  
- Con **Docker Hub** se pueden descargar imágenes ya preparadas (por ejemplo, de MySQL o Nginx).  
- Los comandos básicos como `docker pull`, `docker run`, `docker ps`, `docker stop` y `docker rm`.

---

### ⚙️ Video 2: *Cómo usar Docker paso a paso*
Este video fue más práctico. Se mostró cómo instalar Docker y ejecutar un contenedor con un servidor web simple.  
Aprendí a usar un archivo **Dockerfile**, que sirve para definir la configuración de una imagen personalizada.

Pasos básicos que se explicaron:
1. Crear un archivo `Dockerfile` con las instrucciones.  
2. Construir una imagen con `docker build -t nombre-imagen .`  
3. Ejecutar un contenedor con `docker run -p 8080:80 nombre-imagen`.  
4. Ver el contenedor corriendo con `docker ps`.

---

## 💬 2. Reflexión personal
Docker **simplifica mucho el despliegue** de aplicaciones, ya que evita los problemas de “en mi máquina sí funciona”.  
Con los contenedores se puede tener el mismo entorno en cualquier equipo o servidor.  

**Ventajas:**
- Portabilidad: los contenedores corren igual en Windows, Linux o Mac.  
- Rapidez: iniciar un contenedor es mucho más rápido que una máquina virtual.  
- Organización: se pueden manejar varios servicios separados (por ejemplo, base de datos y backend).  

**Desafíos:**
- Al principio cuesta entender la diferencia entre contenedores e imágenes.  
- Se necesita algo de práctica con los comandos y los archivos `Dockerfile` o `docker-compose.yml`.

---

## 🧩 3. Ejemplo práctico: Mini proyecto con Docker

### 🧱 Archivos usados

#### `Dockerfile`
```dockerfile
# Usar la imagen base de Nginx
FROM nginx:latest

# Copiar el archivo HTML al contenedor
COPY index.html /usr/share/nginx/html
```

#### `index.html`
```html
<!DOCTYPE html>
<html>
  <head>
    <title>Hola desde Docker</title>
  </head>
  <body>
    <h1>Mi primer contenedor con Nginx 🚀</h1>
  </body>
</html>
```

#### Comandos ejecutados
```bash
docker build -t mi-nginx .
docker run -d -p 8080:80 mi-nginx
```

Después de eso, abrí el navegador en `http://localhost:8080` y vi mi página funcionando dentro del contenedor.  
📸 *(Aquí puedes agregar una captura del navegador y del comando `docker ps` en la carpeta `images/`)*

---

## 📚 4. Recursos adicionales consultados
- Documentación oficial de Docker: [https://docs.docker.com](https://docs.docker.com)  
- Docker Hub (imágenes disponibles): [https://hub.docker.com](https://hub.docker.com)  
- Artículo de Medium: *“Guía rápida para entender Docker y contenedores”*  
- Guía en español sobre `docker-compose`: [https://docs.docker.com/compose](https://docs.docker.com/compose)  

---

## ✅ 5. Conclusión
Docker me pareció una herramienta muy poderosa y moderna para los desarrolladores.  
Permite crear entornos reproducibles, portables y más seguros.  
Creo que es muy útil tanto para proyectos personales como para empresas, sobre todo cuando se trabaja con varios servicios o bases de datos.
