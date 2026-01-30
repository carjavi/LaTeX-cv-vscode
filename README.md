<p align="center"><img src="./img/LaTeX.png" width="500"   alt=" " /></p>
<h1 align="center"> LaTeX CV + Visual Studio Code </h1> 
<h4 align="right">Jan 26</h4>

<p>
  <img src="https://img.shields.io/badge/OS-Linux%20GNU-yellowgreen">
  <img src="https://img.shields.io/badge/OS-Windows%2011-blue">
</p>

<br>

# Table of contents
- [Table of contents](#table-of-contents)
- [Porque no usar Overleaf?](#porque-no-usar-overleaf)
- [Install](#install)

<br>

Compilando mi CV con LaTeX en VScode localmente. ```Optimizado para ATS ```. <br>

```LaTeX``` lenguaje de marcado para crear documentos profesionales (PDFs, libros, CVs, tesis, etc.). Fue probado en Windows, pero debria funcionar igual en linux.

<br>

# Porque no usar Overleaf?
<p align="center"><img src="./img/overleaf.jpg" width="200"   alt=" " /></p>
* El plan gratuito tiene límites de compilaciones automáticas simultáneas y menos tiempo de compilación en proyectos grandes. <br>
* Espacio y número de colaboradores limitado en el plan free.<br>
* Dependencia de internet para editar (aunque hay modo offline con planes pagos).<br>
* Puede ser más lento con proyectos muy grandes comparado a compilar localmente.<br>
  
<br>

# Install
1. Instalar latex-full<br> 
Para Windows MiKTeX: https://miktex.org/download<br>
> :bulb: **Tip:** En linux esta ***TeX Live full***. https://tug.org/texlive/. (version muy pesada, about 9Gb)

2. Update Miktek GUI ```(indispensable)```<br>
por consola:
```bash
miktex-console --check-updates
miktex-console --update
```

3. Instalar Perl (Para que latexmk funcione) 
Descarga e instala Strawberry Perl: https://strawberryperl.com/ (elige la versión "Recommended")


4. Usar latexmk con XeLaTeX para Compilar<br>
Ya podemos compilar un proyecto. Desde la consola vamos a la carpeta del proyecto y probamos compilar un archivo ***.tex***
```bash
latexmk -xelatex -synctex=1 -interaction=nonstopmode -file-line-error (nombre-archivo-latex).tex
#sample
latexmk -xelatex -synctex=1 -interaction=nonstopmode -file-line-error carjavi_cv.tex
latexmk -C # limpiar los errores
```
si todo sale bien se creara un archivo .PDF <br>
> :warning: **Warning:** No se puede compilar con pdflatex, esta configuración trabaja solo con ***XeLaTeX***.
 
5. Instalar extensión en VS Code
	1. En VS Code, ve a Extensions ***Ctrl + Shift + X***
	2. Busca LaTeX Workshop (James-Yu) e instálala

6. Configuración de ***settings.json*** en VScode
   1. Presiona la combinación de teclas ***Ctrl + Shift + P*** para abrir la paleta de comandos.
   2. Escribe la palabra ***json***
   3. Selecciona la opción que dice: ***Preferences: Open User Settings (JSON)***
   4. Busca la línea la última antes del ```}``` del json y coloca una coma ```,``` despues de la ultima linea,despues el siguiente codigo:
   ```bash
   "latex-workshop.latex.tools": [
        {
            "name": "latexmk-xelatex",
            "command": "latexmk",
            "args": [
                "-xelatex",
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOC%"
            ]
        }
    ],
    "latex-workshop.latex.recipes": [
        {
            "name": "latexmk (xelatex)",
            "tools": [
                "latexmk-xelatex"
            ]
        }
    ],
    "latex-workshop.latex.recipe.default": "latexmk (xelatex)"
   ```

   5. Guarda con Ctrl + S

7. Listo para Compilar en VScode
   1. Abre tu archivo ***name-latex-file.tex***
   2. Presiona ***Ctrl + Alt + B*** (o busca "Build" en la paleta de comandos).
   3. Debería compilar con latexmk -xelatex automáticamente y generar el archivo .PDF

> :warning: **Warning:** En la carpeta del proyecto deben estar los 3 archivos principales:<br>
 ```*.tex ```Archivo de texto plano que contiene código LaTeX (comandos, estructura, contenido). <br>
 ```*.sty ``` Son complementos o "plugins" que añaden funcionalidades específicas. comandos nuevos que no vienen por defecto en LaTeX (manejo de imágenes, colores, márgenes, hipervínculos). <br>
 ```*.cls ``` Es el esqueleto o la estructura global del documento. Se invoca siempre en la primera línea del archivo .tex con el comando \documentclass{nombre_de_la_clase}. clase personalizada (define estilos, colores, comandos como \cvitem, \skillbar).


<br>

---

<div>
  <p>
    <img  align="top" width="42" style="padding:0px 0px 0px 0px;" src="./img/carjavi.png"/> Copyright &nbsp;&copy; 2023 Instinto Digital <a href="https://carjavi.github.io/" title="carjavi.github">carjavi</a>
  </p>
</div>

<p align="center">
    <a href="https://instintodigital.net/" target="_blank"><img src="./img/developer.png" height="100" alt="www.instintodigital.net"></a>
</p>

