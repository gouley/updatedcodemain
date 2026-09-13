<?php
    $categorie = htmlspecialchars($_POST['categorie']);
    $nom = htmlspecialchars($_POST['nom']);
    $prenom = htmlspecialchars($_POST['prenom']);
    $email = htmlspecialchars($_POST['email']);
    $message = htmlspecialchars($_POST['message']);
    echo "Catégorie : " . $categorie . "<br>";
    echo "Nom : " . $nom . "<br>";
    echo "Prénom : " . $prenom . "<br>";
    echo "Email : " . $email . "<br>";
    echo "Message : " . $message . "<br>";
    echo "Genre : " . $Genre ."<br>";
    ?>