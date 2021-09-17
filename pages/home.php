<h1>Jeux vidéos</h1>
<div class="container">
    <?php
        $req = $bdd->query("SELECT * FROM jeux ORDER BY id");
        while($don = $req->fetch()){
    ?>
        <div class="card">
            <div class="card-img">
                <img src="images/<?= $don['image'] ?>" alt="<?= $don['titre'] ?>">
            </div>
            <div class="card-body">
            <div class="model"><a href="index.php?action=produits&id=<?= $don['id'] ?>"><?= $don['titre'] ?></a></div>
                <div class="mark"><?= $don['plateforme'] ?></div>
                <div class="price"><?= $don['prix'] ?>€</div>
                <div class="type"><?= $don['type'] ?></div>
            </div>
        </div>            
    <?php
        }   
        /*
        $don = $req->fetchAll();
        var_dump($don);
        */
    ?>
</div>