# citawell-publica

Instalación de [TryPost](https://github.com/trypostit/trypost) 1.1.0 (licencia AGPL-3.0) que sirve https://publica.citawell.com,
la app de Citawell para publicar vídeos en TikTok.

Cambios sobre TryPost: solo la marca (logos, icono y favicon en `public/`). El resto es la imagen oficial
`ghcr.io/trypostit/trypost:1.1.0` sin modificar; su código fuente completo está en el repositorio de TryPost.

## Construir y desplegar

```
docker build -t <registro>/citawell-publica:<sha> .
docker push <registro>/citawell-publica:<sha>
# en el servidor (Dokku):
docker pull <registro>/citawell-publica:<sha>
dokku git:from-image citawell-publica <registro>/citawell-publica:<sha>
```

Los logos se generan con la tipografía (Bricolage Grotesque 600) y los colores de citawell.com (texto #131A22, acento #FF5A3C).

## Licencia

TryPost: AGPL-3.0 (ver el repositorio original). Logos de Citawell: © Citawell, todos los derechos reservados.
