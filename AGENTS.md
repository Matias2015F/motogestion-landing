# AGENTS.md — Landing Page MotoGestión

URL: https://motogestion.ar
Repo: repo separado del app (johnny-blaze-os)

---

## Regla principal

NO TOCAR el copy principal ni los meta tags SEO sin instrucción explícita.
El SEO de esta página ya está configurado y rankeando.

---

## Qué es esta página

La landing page de MotoGestión.
Objetivo: que un mecánico que llega desde Google entienda en 5 segundos qué hace la app y entre a registrarse.

URL de la app: https://app.motogestion.ar
CTA principal: botón que lleva a app.motogestion.ar

---

## Zonas que NO se tocan sin instrucción

- Title y meta description (SEO)
- Canonical URL
- JSON-LD structured data
- Open Graph tags
- Keyword density en el body

---

## Qué sí se puede tocar

- Copy de secciones de beneficios
- Precios o planes (siempre verificar primero en `C:\Users\Usuario\johnny-blaze-os\docs\context\precios-y-planes.md`)
- Screenshots o imágenes de la app
- Testimonios
- Sección de FAQs
- Diseño visual (sin cambiar estructura SEO)

---

## Stack

- HTML estático (sin framework)
- CSS inline o en `<style>` dentro del HTML
- Sin JavaScript complejo — la landing tiene que cargar rápido
- Deploy: Vercel

---

## Fuentes de verdad (siempre leer antes de editar)

| Qué tocar       | Dónde está la fuente de verdad                                              |
|-----------------|-----------------------------------------------------------------------------|
| Precios / planes | `C:\Users\Usuario\johnny-blaze-os\docs\context\precios-y-planes.md`       |
| Separación landing/app | `C:\Users\Usuario\johnny-blaze-os\docs\context\separacion-repos.md` |
| Protocolo deploy | `C:\Users\Usuario\johnny-blaze-os\WORKFLOW.md`                            |

## Forma de trabajo

- Un cambio por vez.
- No tocar meta tags a menos que se pida.
- Verificar que la página carga rápido después de cada cambio.
- No agregar librerías externas sin necesidad.

---

## Deploy

La landing se deploya en Vercel al hacer push a main del repo de la landing.
URL destino: motogestion.ar

Para verificar que el deploy llegó: abrir https://motogestion.ar y confirmar el cambio.
