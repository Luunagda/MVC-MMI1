<section class="sectionmanga">
    <div class="intro">
        <h1>Les mangas</h1>
        <p>Les mangas ont été important pour moi à partir du collège. J'ai commencé à en lire grâce à mon père, après qu'il m'ait fait découvrir l'anime Fairy Tail. Le tout premier manga que j'ai lu se nomme Strike The Blood.</p>
    </div>
    <div>
        <img src="image/manga1.jpg" alt="Photo de quelqu'un lisant un manga. La photo est en gros plan sur le manga ouvert."/>
    </div>
</section>
<section class="espace">
    <div class="partie">
        <?php foreach($mangas as $manga):?> 
            <a href="/mangas/lire/<?= $manga['slug']?>">    
                <div class="categorie1">
                    <h2><?= $manga['titre']?></h2>
                    <img src="<?= $manga['nom_fichier'] ?>" alt="<?= $manga['alt'] ?>"/>
                    <p><?= substr($manga['resume'],0,30)."..." ?></p>
                </div>
            </a>
        <?php endforeach ?> 
    </div>
</section>