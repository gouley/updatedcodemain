<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TP JSON</title>
</head>
<body>
    <?php
    $identités = array() ;
    $identités[0] = array("id" => "1", "prénom" => "Cyrille", "date de naissance" => "1980-04-08") ;
    $identités[1] = array("id"=> "2", "prénom"=> "Agathe", "date de naissance" => "1988-04-01") ;
    $identités[2] = array("id"=> "3", "prénom"=> "Marie", "date de naissance" => "1985-09-03") ;
    $identités[3] = array("id"=> "4", "prénom"=> "Yvan", "date de naissance" => "1976-06-08") ;
    $identités[4] = array("id"=> "5", "prénom"=> "Stéphane", "date de naissance" => "1976-08-02") ;
    ?>
    
    <table border="1px" cellpadding="10" cellspacing="0">
        <thead>
            <tr>
                <th>ID</th>
                <th>Prénom</th>
                <th>Date de Naissance</th>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach($identités as $personne) {
                echo "<tr>";
                echo "<td>" . $personne["id"] . "</td>";
                echo "<td>" . $personne["prénom"] . "</td>";
                echo "<td>" . $personne["date de naissance"] . "</td>";
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>
</body>
</html>