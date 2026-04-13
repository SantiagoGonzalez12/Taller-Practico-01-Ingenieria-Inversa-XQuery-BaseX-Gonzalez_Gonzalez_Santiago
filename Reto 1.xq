for $libro in //libro[@categoria="programacion"]
let $titulo := $libro/titulo/text()
let $precio := number($libro/precio)
where $precio > 30
order by $titulo descending 
return <resultado>Título: {$titulo} - Precio: {$precio}€</resultado>