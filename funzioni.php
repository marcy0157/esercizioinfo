<?php
function disegnaSelect($films){

    echo"<form method=\"post\" id=\"sceltaFilm\" action=\"seconda.php\">";

    echo"<select name=\"scelta\" id=\"scelta\">"   ;
    foreach ($films as $key => $app) {
        echo "<option>";
        echo $app['titolo'];
        echo "</option>";
    }

    echo"</select>";

    echo"<button class=\"btn-success\" type=\"submit\">visualizza dati</button>";
    echo"</form>";

}
function disegnaTabella($films){

    echo " <table class=\"table\"> ";
    echo "<tr>";
    echo " <td>";
    echo "Titolo";
    echo "</td>";
    echo " <td>";
    echo "Genere";
    echo "</td >";
    echo "<td >";
    echo "Durata";
    echo "</td >";
    echo "<td >";
    echo "Adatto per bambini";
    echo "</td >";
    echo "</tr >";

    foreach ($films as $key => $app1) {
        echo "<tr>";
        echo " <td>";
        echo $app1['titolo'];
        echo "</td>";
        echo " <td>";
        echo $app1['genere'];
        echo "</td >";
        echo "<td >";
        echo $app1['durataMin'];
        echo "</td >";
        echo "<td >";
        if ($app1['perBambini'] == true) {
            echo "<i class=\"fas fa-check\"></i>";
        }
        echo "</td >";
        echo "</tr >";
    }
    echo "</table>";

}
