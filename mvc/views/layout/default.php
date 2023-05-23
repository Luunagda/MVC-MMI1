<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SAE 203 - Site Web</title>
    <script src="../../jquery-3.6.0.min.js"></script>
    <script src="../../slick/slick.min.js"></script>
    <script src="../../magnific-popup/jquery.magnific-popup.min.js"></script>
    <script src="../../agrandissement.js"></script>
    <script src="../../caroussel.js"></script>
    <script src="../../jeu.js"></script>
    <link rel="stylesheet" href="../../magnific-popup/magnific-popup.css">
    <link rel="stylesheet" href="../../slick/slick.css">
    <link rel="stylesheet" href="../../slick/slick-theme.css">
    <link rel="stylesheet" href="../../css/default.css"/>
    <link rel="stylesheet" href="../../css/accueil.css"/>
    <link rel="stylesheet" href="../../css/page_mangas.css"/>
    <link rel="stylesheet" href="../../css/page_wakfu.css"/>
    <link rel="stylesheet" href="../../css/page_dessin.css"/>
    <link rel="stylesheet" href="../../css/contact.css"/>
    <link rel="icon" href="../image/logo.png">
    
</head>
<body>
    <nav>
        <div class="degrade"><h1>SAE 203 </h1></div>
        <div><a href="<?= HTMLROOT ?>/main"><h1>Accueil</h1></a></div>
        <div><a href="<?= HTMLROOT ?>/dessin"><h1>Le dessin</h1></a></div>
        <div><a href="<?= HTMLROOT ?>/mangas"><h1>Les mangas</h1></a></div>
        <div><a href="<?= HTMLROOT ?>/wakfu"><h1>Wakfu</h1></a></div>
        <div><a href="<?= HTMLROOT ?>/contact"><h1>Contact</h1></a></div>
    </nav>
    <main>
        <?= $content ?>
    </main>
    <footer>
        <p>Toutes les photos et images sur ce site web ne m'appartiennent pas.</p>
        <p>email : cyanhenaff@gmail.com</p>
        <p>Insta : @cyanhenaff　シアン💙</p>
    </footer>
</body>
</html>

