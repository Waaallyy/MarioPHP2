<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - Univers de Mario</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <?php include __DIR__ . '/Include/header.php'; ?>

    <main>
        <h2 class="titre-page">Contactez-nous</h2>

        <form class="formulaire" action="confirmation.php" method="get">

            <div class="champ champ-court">
                <label for="nom">Nom</label>
                <input type="text" id="nom" name="nom"
                       minlength="2" maxlength="50"
                       pattern="[A-Za-z&Agrave;-&yuml;' -]{2,50}"
                       title="2 caract&egrave;res minimum, lettres uniquement"
                       required>
            </div>

            <div class="champ champ-court">
                <label for="prenom">Prenom</label>
                <input type="text" id="prenom" name="prenom"
                       minlength="2" maxlength="50"
                       pattern="[A-Za-z&Agrave;-&yuml;' -]{2,50}"
                       title="2 caract&egrave;res minimum, lettres uniquement"
                       required>
            </div>

            <div class="champ champ-long">
                <label for="email">Email</label>
                <input type="email" id="email" name="email"
                       maxlength="120"
                       title="Saisissez une adresse de la forme nom@domaine.fr"
                       required>
            </div>

            <div class="champ champ-long">
                <label for="sujet">Sujet</label>
                <input type="text" id="sujet" name="sujet"
                       minlength="3" maxlength="100"
                       title="3 caract&egrave;res minimum"
                       required>
            </div>

            <div class="champ champ-message">
                <label for="message">Message</label>
                <textarea id="message" name="message"
                          minlength="10" maxlength="2000"
                          title="10 caract&egrave;res minimum"
                          required></textarea>
            </div>

            <button type="submit" class="btn-valider">Valider</button>

        </form>
    </main>

    <?php include __DIR__ . '/Include/footer.php'; ?>

</body>
</html>
