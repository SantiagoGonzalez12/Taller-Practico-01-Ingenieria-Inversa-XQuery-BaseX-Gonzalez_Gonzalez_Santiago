declare namespace file="http://expath.org/ns/file";

let $html :=
<html>
  <head>
    <meta charset="UTF-8"/>
    <title>Catálogo de Biblioteca 2026</title>
  </head>
  <body>
    <h1>Listado de Libros Actualizado</h1>
    <ul>
      {
        for $libro in //libro
        let $titulo := $libro/titulo/text()
        let $precio := $libro/precio/text()
        let $publicacion := number($libro/publicacion)
        let $novedad := if ($publicacion > 2022) then
        "(¡Novedad!)"
        else
        ""
        return <li>{$titulo} {$novedad}- {$precio}€</li>
      }
    </ul>
  </body>
</html>

return file:write("web_biblioteca.html",$html)