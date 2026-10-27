# Citawell · publica.citawell.com — TryPost (AGPL-3.0, https://github.com/trypostit/trypost) con la marca Citawell.
# Cambios sobre el original: logos, icono, favicon y una hoja de colores (carpeta public/) y una línea en
# resources/views/app.blade.php que carga esa hoja después del CSS de TryPost. El resto de TryPost no se toca.
FROM ghcr.io/trypostit/trypost:1.1.0
COPY --chown=root:root public/ /var/www/html/public/
RUN sed -i 's#@inertiaHead#@inertiaHead\n        <link rel="stylesheet" href="/citawell.css">#' /var/www/html/resources/views/app.blade.php \
 && grep -q 'citawell.css' /var/www/html/resources/views/app.blade.php
