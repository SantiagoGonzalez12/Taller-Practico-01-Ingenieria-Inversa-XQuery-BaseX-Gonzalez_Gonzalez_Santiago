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