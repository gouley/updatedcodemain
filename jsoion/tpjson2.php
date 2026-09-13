<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <style>
        table.stylish {
            width: 100%;
            border-collapse: collapse;
            background-color: #f7f7f7;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        table.stylish th,
        table.stylish td {
            padding: 12px 20px;
            text-align: left;
        }
        table.stylish th {
            background-color: #4a4a4a;
            color: #fff;
            font-size: 1.1em;
        }
        table.stylish tbody tr:nth-child(odd) {
            background-color: #ffffff;
        }
        table.stylish tbody tr:nth-child(even) {
            background-color: #eeeeee;
        }
        table.stylish tbody tr:hover {
            background-color: #dcdcdc;
        }
    </style>
    <?php
    $personne = array(
        "nom"              => "Durand",
        "prénom"           => "Cyrille",
        "date de naissance"=> "1980-04-08",
        "adresse"          => array(
            "rue"         => "123 Rue de la Paix",
            "ville"       => "Paris",
            "code postal" => "75000",
        ),
        "loisirs"          => array(
            "lecture" => "BD",
            "musique" => "Jazz",
        ),
        "sports"           => array("football", "tennis", "pétanque"),
    );
    ?>

    <table class="stylish">
        <tbody>
            <tr>
                <td style="font-weight: bold;">
                    Informations sur : <?php echo $personne["prénom"] . " " . $personne["nom"]; ?>
                </td>
            </tr>
            <tr>
                <td>

                    Il est né le <?php echo $personne["date de naissance"]; ?>
                </td>
            </tr>
            <tr>
                <td>
                    Il habite : <?php echo $personne["adresse"]["rue"] . ", " .
                                $personne["adresse"]["code postal"] . " " .
                                $personne["adresse"]["ville"]; ?>
                </td>
            </tr>
            <tr>
                <td>
                    Ses loisirs : <?php echo implode(", ", $personne["loisirs"]); ?>
                </td>
            </tr>
            <tr>
                <td>
                    Ses sports : <?php echo implode(", ", $personne["sports"]); ?>
                </td>
            </tr>
        </tbody>
    </table>

</body>
</html>

