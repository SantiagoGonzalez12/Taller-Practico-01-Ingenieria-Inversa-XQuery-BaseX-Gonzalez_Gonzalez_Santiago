for $autor in distinct-values(//autor)
let $cantidad := count(//libro[autor = $autor])
where $cantidad > 1
return <resultado>{$autor} - Total: {$cantidad} Libros</resultado>