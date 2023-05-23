<section class="section1">
    <a href="https://www.gifsanimes.com/cat-dragons-188.htm" ><img src="https://www.gifsanimes.com/data/media/188/dragon-image-animee-0007.gif" alt="dragon-image-animee-0007" class="dino" /></a>
    <a href="https://www.gifsanimes.com/cat-abeilles-185.htm" ><img src="https://www.gifsanimes.com/data/media/185/abeille-image-animee-0091.gif" alt="abeille-image-animee-0091" class="abeille" /></a>
    <div class="titre">
        <h1>Présentation</h1>
    </div>
    <div class="presentation">
        <span>
            Je m'appelle Cyan (oui comme la couleur) et voici certains de mes centres d'intérêt. Ce site va me permettre de vous les présenter. J'ai 19 ans et je suis actuellement en BUT MMI 1 en Nouvelle-Calédonie. Ce site est créé dans le cadre de la SAE 203.
        </span>
    </div>
</section>
<div class="titre_categorie">
    <h1>Mes centres d'intérêts</h1>
</div> 
<div class="partie">
    <?php foreach($main as $categorie): ?>
        <a href="<?= HTMLROOT ?><?= $categorie['lien_page']?>">
            <div class="categorie">
                <h1><?= $categorie['titre_page']?></h1>
                <img src="<?= $categorie['lien_image']?>" alt="<?= $categorie['alt']?>"/>
            </div>
        </a>
    <?php endforeach?>
</div>
