<section class="sectiondessin">
    <div class="intro">
        <h1>Le dessin</h1>
        <p>Depuis toute petite je dessine et je n'ai jamais arrêté. J'ai dessiné par mes propres moyens mais j'ai aussi pris des cours que je prends encore aujourd'hui.</p>
    </div>
    <div>
        <img src="image/dessin1.jpg" alt="Image de quelqu'un dessinant au fusain"/>
    </div>
</section>
<section>
    <div class="contenudessin">
        <h1><?= $tab["dessin1"]['titre'] ?></h1>
        <div class="dessin">
            <p><?= $tab["dessin1"]['paragraphe'] ?></p>
        </div>
        <div class="dessin">
            <?php foreach($tab["dessin1"]["images"] as $image): ?>
            <div>
                <h2><?= $image['sous-titre'] ?></h2>
                <img src="<?= $image['nom_fichier'] ?>" alt="<?= $image['alt'] ?>"/>
            </div>
            <?php endforeach ?>
        </div>    
    </div>

    <div class="contenudessin">
        <h1><?= $tab["dessin2"]['titre'] ?></h1>
        <div class="dessin">
            <p><?= $tab["dessin2"]['paragraphe'] ?></p>
        </div>

        <div class="center">
            <?php foreach($tab["dessin2"]["images"] as $image): ?>
            <div>
                <h2><?= $image['sous-titre'] ?></h2>
                <img src="<?= $image['nom_fichier'] ?>" alt="<?= $image['alt'] ?>"/>
            </div>
            <?php endforeach ?>
        </div>
    </div>
 
    <div class="contenudessin">
        <h1><?= $tab["dessin3"]['titre'] ?></h1>
        <div class="dessin">
            <p><?= $tab["dessin3"]['paragraphe'] ?></p>
        </div>

        <div class="dessin ">
            <?php foreach($tab["dessin3"]["images"] as $image): ?>
            <div class="image-link">
                <a href="<?= $image['nom_fichier'] ?>">
                    <img src="<?= $image['nom_fichier'] ?>" alt="<?= $image['alt'] ?>"/>
                </a>
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>