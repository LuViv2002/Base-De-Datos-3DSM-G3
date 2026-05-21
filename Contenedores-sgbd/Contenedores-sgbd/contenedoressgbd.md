# contenedores de sistemas de datos
[imagenDocker](.![alt text](ballena-1.png))
## comandos  Docker con descripcion 
| Columna 1 | Columna 2 |
| :--- | :--- |
| **docker --version** | _verifica la version de docker_ |
|**docker pull nombre_imagen**|_Descarga
una imagen de Docker hub
[DockerHub](https://hub.docker.com/) |

|**docker images** | _visualiza las imagenes_|
**docker run** | _ crea un contenedor _|
|**docker ps**| _visualisa todos los contenedores_|
| **docker container ls** | _visualisa todos los contenedores en ejecucion_ |
| **docker ps -a** | _visualiza todos los contenedores en ejecucion y no en ejecucion_ |
| **docker  container ls -a** | _visualiza todos los contenedores en ejecucion y no en ejecucion_ | 
**docker images** | _visualiza las imagenes_|
|**docker images** | _visualiza las imagenes_|
| Fila 2, Celda 1 | Fila 2, Celda 2 |
**docker volume ls** | _lista de volumenes que tiene docker|
**docker volume create nombre del volumen** | _crea un volumen_|_|
 **docker volume rm nombre_volumen** | _elimina un volumen_|

## comandos de contenedores  de SGBD


docker pull docker/getting-started




### contenedor de tutorial de docker 

´´´ 
docker run -d --name tutorial-docker - p80:80 docker/getting-started




´´´
'''
### contenedor de Mariadb sin volumen


docker run -d --name server-MariaDBG3 -p 3342:3306 -e MARIADB_ROOT_PASSWORD=12345 d8e96


'''
'''
### contenedor de Mariadb con volumen


docker run -d --name server-MariaDBG3 \
-p 3342:3306 -e MARIADB_ROOT_PASSWORD=12345 \
-v vol-mariadbg3:/var/lib/mysql d8e96fd


'''

### contenedor de MariaDB

´´´
docker run -d --name server-MariaDBG3 -p 3342:3306 -e MARIADB_ROOT_PASSWORD=12345 d8e96
doker


'''

### contenedor de Postgres con volumen

´´´´ docker
docker run -d --name server-postgresg3 \
-e POSTGRES_PASSWORD=123456 \
-p 5456:5432 -v vol-postgresg3:/var/lib/postgresql/data \
78481659c47e862334611ccdaf7c369c986b3046da9857112f3b309114a65fb4
´´´   