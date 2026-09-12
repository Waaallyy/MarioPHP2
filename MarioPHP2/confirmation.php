<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmation - Univers de Mario</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <?php include __DIR__ . '/Include/header.php'; ?>
    
    <?php
    require_once __DIR__ . '/Include/db.php';


    $stmt = $pdo->prepare('INSERT INTO contact (nom, prenom, email, sujet, message) VALUES (:nom, :prenom, :email, :sujet, :message)');
    $stmt->bindParam(':nom', $_GET['nom']);
    $stmt->bindParam(':prenom', $_GET['prenom']);
    $stmt->bindParam(':email', $_GET['email']);
    $stmt->bindParam(':sujet', $_GET['sujet']);
    $stmt->bindParam(':message', $_GET['message']);
    $stmt->execute();

?>

    <main>
        <h2 class="titre-page">Contactez-nous</h2>

        <!-- Message de validation. Sans PHP, les valeurs affichees ici sont
             celles de l'exemple du sujet ; elles seront reprises de la base
             de donnees (et de la date / heure d'envoi) lors du passage au PHP. -->
        <section class="recap">

            <p class="entete-recap">Talon Achille : R&eacute;capitualitf de Votre demande :</p>

            <p><span class="libelle">sujet :</span> <span class="valeur"><?= $_GET['sujet'] ?></span></p>

            <p><span class="libelle">message :</span> <span class="valeur"><?= $_GET['message'] ?></span></p>

            <p><span class="libelle">mail :</span> <span class="valeur"><?= $_GET['email'] ?></span></p>

            <p class="merci">Merci pour votre demande, nous allons y r&eacute;pondre dans les plus brefs d&eacute;lai.</p>

        </section>
    </main>

    <?php include __DIR__ . '/Include/footer.php'; ?>

</body>
</html>
