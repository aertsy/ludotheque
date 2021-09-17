<?php
    session_start();
    require "connexion.php";
    if(isset($_GET['action']))
    {
        $menu = [
            "home" => "home.php",
            "jeux"=> "jeux.php",
        ];
        if(array_key_exists($_GET['action'],$menu))
        {
            if($_GET['action']=="produits")
            {
                if(isset($_GET['id']) AND !empty($_GET['id']))
                {
                    $id = htmlspecialchars($_GET['id']);
                    $produit = $bdd->prepare("SELECT * FROM jeux WHERE id=?");
                    $produit->execute([$id]);
                    if(!$donProd = $produit->fetch())
                    {
                        header("HTTP/1.1 404 Not Found");
                        $action = "404.php"; 
                    }else{
                        $action = $menu['produits']; 
                    }
                    $produit->closeCursor();
                }else{
                    header("HTTP/1.1 404 Not Found");
                    $action = "404.php"; 
                }
            }elseif($_GET['action']=="deconnexion"){
                session_destroy();
                header("LOCATION:index.php");
            }else{
                $action = $menu[$_GET['action']]; 
            }
        }else{
            header("HTTP/1.1 404 Not Found");
            $action = "404.php";
        }

    }else{
        $action="home.php";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Ludothèque</title>
</head>
<body>
<header>
        <div id="logo">Ludothèque</div>
        <form action="#">
            <div class="form-group">
                <input type="text" id="search" name="search" placeholder="Votre recherche">
                <input type="submit" value="Rechercher">
            </div>
        </form>  
        </div>
    </header>
    <main>
        <?php
            include("pages/".$action);
        ?>

    </main>
    <footer>
        <p>&copy; Copyright EPSE 2021</p>
    </footer>
</body>
</html>