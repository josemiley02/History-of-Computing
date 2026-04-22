<?php
// PHP: ejemplo que procesa datos enviados por un formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $listLen = $_POST["listlen"];
    if ($listLen > 0 && $listLen < 100) {
        $sum = 0;
        $numbers = [];
        for ($i = 0; $i < $listLen; $i++) {
            $val = $_POST["num_$i"];
            $numbers[] = $val;
            $sum += $val;
        }
        $average = floor($sum / $listLen);
        $result = 0;
        foreach ($numbers as $num) {
            if ($num > $average) $result++;
        }
        echo "<p>Número de valores > media: $result</p>";
    } else {
        echo "<p>Error: longitud no válida</p>";
    }
} else {
    // Mostrar formulario
    echo '<form method="post">';
    echo 'Longitud: <input type="number" name="listlen" min="1" max="99"><br>';
    echo '<input type="submit" value="Enviar">';
    echo '</form>';
}
?>
