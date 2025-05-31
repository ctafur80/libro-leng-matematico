


## Introducción

Apuntes de la asignatura Lenguaje Matemático, Conjuntos y Números, del grado
de Matemáticas de la UNED.

El documento está hecho con Markdown, aunque es un Markdown extendido, en
realidad. Se trata del "sabor" de Pandoc (_Pandoc-flavoured Markdown_). La
herramienta que uso para crear el documento es Pandoc, aunque a este se le
suele clasificar, más que como un generador de sitios estáticos
(_static-site generator_), como un traductor de lenguajes de marcado
(_markup-languages translator_).

El documento de salida es _main.html_. He optado por crear un documento web
como salida, en lugar de, por ejemplo, PDF, porque considero que el formato
web es más moderno y cómodo. Incluso cuando se trata de un texto de
matemáticas, como este. Eso sí, las matemáticas en formato web tienen
algunas carencias. En mi caso, he optado por hacerlas mediante la biblioteca
(_library_) MathJax de JavaScript.





## Archivos

El archivo _build-data.mk_ contiene algujos parámetros sobre el tipo de
documento que se va a crear. El archivo _toc.mk_, la tabla de contenidos.
Estos son invocados desde el _makefile_, que es para la herramienta GNU
Make, que invoca al comando `pandoc` con los ajustes que deseo.

El archivo _pandoc-settings.yaml_ es lo que en el ecosistema de Pandoc
suelen llamar el _defaults.yaml_. Ahí se especifican ajustes generales que
seguramente comparta para varios de sus documentos.

En la carpeta _web-settings_, se encuentran los distintos archivos para el
documento web de salida. Además de HTML y CSS, también hace uso de
JavaScript, para ciertas funcionalidades. Así, se tiene, por ejemplo, un
_breadcrumbs_ con el que, en todo momento, se ve en qué parte de la tabla de
contenidos nos encontramos, cosa que considero que viene muy bien en la
lectura del documento. También, la tabla de contenidos está
"supervitaminada" con código JavaScript. Por cierto, esta se encuentra
oculta, pero puede desplegarla en cualquier momento, con el botón inferior
derecho.

Tal y como he dicho antes, hago un gran uso de las bibliotecas de JavaScript
MathJax. Dentro de la carpeta _web-settings/javascript_, hay un archivo para
ajustes de MathJax, en el que se incluyen también cosas como _macros_ de
LaTeX para MathJax, entre otras cosas.

No he usado MathML porque aún sigo echando en falta algunas cosas. No es que
sea problema de MathML, sino de los conversores de LaTeX a MathML. TKTK.

En cuanto a las referencias bibliográficas, se usa la extensión `citeproc`
de Pandoc, pero esta ya viene integrada de serie, con lo que no es necesario
especificar nada sobre este en la invocación a Pandoc.

Las figuras se almacenan todas en la carpeta _figuras_. Se suelen hacer en
formato SVG con Inkscape, aunque se podría usar cualquier otro _software_
equivalente, como Illustrator de Adobe. No obstante, algunas figuras muy
concretas de matemáticas requieren de otro tipo de _software_. Por ejemplo,
las gráficas suelen hacerse, para los documentos, con los paquetes de TeX
PGF/TikZ o Asymptote. El problema es que no tienen una GUI (_graphica-user
interface_), y se tienen que crear las figuras mediante código. Haré uso de
estos en algunas ocasiones.

Para la gestión del _software_ que requiero para este proyecto de
documentación, he hecho uso del gestor de paquetes Nix. De ahí que exista
también un archivo _shell.nix_. Puede ignorarlo si lo desea. Lo único es que
deberá tener cierto _software_ para poder producir el documento de salida
_main.html_ por usted mismo. Por ejemplo, debe tener instalados en su
sistema tanto Pandoc como GNU Make.




