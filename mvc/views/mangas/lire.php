
<div class="contenu">
    <h1><?= $mangas['titre'] ?></h1>
    <div class="manga">
        <img src="../../<?= $mangas['nom_fichier'] ?>" alt="<?= $mangas['alt'] ?>"/>
        <div>
            <p>Auteur : <?= $mangas['auteur'] ?></p>
            <p><?= $mangas['resume'] ?></p>
        </div>
    </div>
</div>
<div class="aligne">
    <button class="custom-btn btn">
        <a href="/mangas" class="lien">Retour à la liste des mangas</a>
    </button>
</div>