# Citawell · publica.citawell.com — TryPost (AGPL-3.0, https://github.com/trypostit/trypost) con la marca Citawell.
# Cambios sobre el original: solo logos, icono y favicon (carpeta public/). El código de TryPost no se toca.
FROM ghcr.io/trypostit/trypost:1.1.0
COPY --chown=root:root public/ /var/www/html/public/
