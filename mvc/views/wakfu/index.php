<section class="sectionwakfu">
    <div class="intro">
        <h1>Wakfu</h1>
        <p>Wakfu est un jeu vidéo mais aussi une série d'animation produite par le studio Ankama. Je vais vous parler sur cette page de la série d'animation Wakfu qui a bercé mon adolescence et que j'adore encore aujourd'hui. La série est composée de trois saisons et la quatrième est en cours de production.</p>
    </div>
    <div>
        <img src="image/Wakfu_logo.png" alt="Logo de Wakfu"/>
    </div>
</section>
<section>
    <div class="wakfu_1"> 
        <h1>L'Univers</h1>
        <div>
            <p>Le Krozmoz est l'univers dans lequel se passe la série Wakfu. L'histoire se passe plus précisément dans le Monde des Douze qui est un des mondes du Krosmoz. Il est composé de douze espèces différentes vénérant douze dieux différents :</p>
            <ul>
                <li>Osamodas</li>
                <li>Ecaflip</li>
                <li>Sadida</li>
                <li>Enutrof</li>
                <li>Eniripsa</li>
                <li>Crâ</li>
                <li>Féca</li>
                <li>Iop</li>
                <li>Sram</li>
                <li>Xélor</li>
                <li>Sacrieur</li>
                <li>Pandawa</li>
            </ul>
            <p>Il existe aussi des dragons et des éliatropes mais ces deux espèces viennent d'un autre monde que le Monde des Douze.</p>
        </div>
    </div>
    <div class="wakfu_1">
        <h1>Résumé de l'histoire</h1>
        <div>
            <p>Deux cents ans ont passé depuis le grand déluge qui a mis fin à l'âge des Dofus et transformé les continents de l'époque en archipels. Les eaux montent, la nature devient folle. Des choses se sont passées, d'autres se sont terminés, mais le Wakfu, l'énergie primordiale créatrice du monde est fortement perturbée par un être mystérieux.
                Sur une petite île au large de la nation d'Amakna, se trouve un petit village perdu dans la forêt : Emelka. Dans ce petit village, démarrent les épopées d'un jeune garçon du nom de Yugo, qui vient de découvrir ses pouvoirs, mais aussi ses origines.
                C'est ici que tout commence pour Yugo et ses amis qui à eux tous forment la Confrérie du Tofu. </p>
        </div>
    </div>
    <div class="wakfu">
        <h1>Les personnages</h1>
        <?php foreach($wakfu as $wakfus):?>
            <section>
                <div>
                    <img src="<?= $wakfus['nom_fichier'] ?>" alt="<?= $wakfus['alt'] ?>" class="image_wakfu"/>
                </div>
                <div class="perso">
                    <h1><?= $wakfus['titre'] ?></h1>
                    <p><?= $wakfus['paragraphe'] ?></p>    
                </div>
            </section>
        <?php endforeach ?>
    </div>
</section>
