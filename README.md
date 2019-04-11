# docker-image-2
Maven, Java

## Recomendación (centos-release-7-6.1810.2.el7.centos.x86_64):
En caso de tener un problema al momento de que maven intente descargar dependencias cunado se envía a construir el Dockerfile y presenta éste mensaje:

```
IPv4 forwarding is disabled. Networking will not work
```

Modificar el archivo **/etc/sysctl.conf**

agregando la linea:

```
net.ipv4.ip_forward=1
```

Reiniciar el servicio de Red

```
systemctl restart network
```

Validando que haya tenido Efecto el cambio 
```
sysctl net.ipv4.ip_forward

A lo que presentará el siguiente mensaje en consola

net.ipv4.ip_forward = 1
```

Construir nuevamente el Dockerfile y comenzara a descargar las dependencias maven.
