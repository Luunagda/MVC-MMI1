<h1 class="contact">Formulaire de contact</h1>
<fieldset class="formulaire">
    <form method="post" >
        <label>Civilité</label>
        <select name="civilite">
            <option value="Monsieur" selected>Monsieur</option>
            <option value="Madame">Madame</option>
        </select>
        <label>Prénom</label>
        <input type="text" name="prenom" id='prenom'>
        <label>Nom</label>
        <input type="text" name="nom" id='nom'>
        <label>Email</label>
        <input type="email" name="email" id='email'>
        <!--<label>Date de naissance</label>
        <input type="date" name="date_naissance" id='date_naissance'>-->
        <label>Votre message</label>
        <textarea name="message" id='message'  rows="10" cols="50" placeholder="Ecrivez votre texte ici. Vous êtes limité à 500 caractères."></textarea>
        <input type="submit" value="Envoyer" name='envoi' id="bt">
    </form>
</fieldset>


<?php
if (isset($_POST['envoi'])) {
    $conn = mysqli_connect('localhost', 'root', '', 'centre_interet');
    // Check connection
    if (!$conn) {
        die("Échec de la connexion : " . mysqli_connect_error());
    }

    $sql = "INSERT INTO contact VALUES (NULL, '" . $_POST['civilite'] . "', '" . $_POST['prenom'] . "', '" . $_POST['nom'] . "', '" . $_POST['email'] . "', 5, '" . $_POST['message'] . "')";
    if (mysqli_query($conn, $sql)) {
            echo '<script src="/../../formulaire.js"></script>';
    } else {
            echo "Erreur : " . $sql . "<br>" . mysqli_error($conn);
    }
    mysqli_close($conn);
}
?>