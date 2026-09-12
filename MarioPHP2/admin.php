<?php
require_once __DIR__ . '/Include/db.php';

if (!isset($_SESSION['admin']) || $_SESSION['admin'] != 1) {
    header('Location: index.html');
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $login    = trim($_POST['login'] ?? '');
    $password = $_POST['password'] ?? '';

    $stmt = $pdo->prepare('INSERT INTO user (login, password, admin) VALUES (:login, :password, 0)');

    $stmt->execute([
        ':login'    => $login,
        ':password' => password_hash($password, PASSWORD_DEFAULT),
    ]);

    $message = 'Compte crée.';
}
?>



<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page d'administration - Univers de Mario</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="page-auth">

    <header class="bandeau">
        <a class="lien-logo" href="connexion.php" title="Espace d'administration">
            <img class="logo-bloc" src="image/objets/bloc.png" alt="Bloc point d'interrogation">
        </a>
        <h1>Bienvenue dans l'univers de Mario</h1>
    </header>

    <nav>
        <ul>
            <li><a href="personnages.php">Les personnages</a></li>
            <li><a href="objets.php">Objets</a></li>
            <li><a href="contact.php">Contact</a></li>
        </ul>
    </nav>

    <main>
        <h2 class="titre-auth">Page d&rsquo;administration</h2>

        <p class="bonjour">Bonjour <?= $_SESSION['login'];?></p>

        <p class="consigne">Depuis cette page, vous pouvez ajouter de nouveaux utilisateurs.</p>

        <a class="lien-deco" href="deconnexion.php">Se d&eacute;connecter</a>

        <form class="carte" action="admin.php" method="post">

            <h3>Ajouter un utilisateur</h3>

            <?php if (!empty($message)) : ?>
                <p class="message"><?= htmlspecialchars($message) ?></p>
            <?php endif; ?>

            <div class="champ-carte">
                <label for="login">Login</label>
                <input type="text" id="login" name="login"
                       placeholder="Login"
                       minlength="3" maxlength="50"
                       title="3 caract&egrave;res minimum"
                       required>
            </div>

            <div class="champ-carte">
                <label for="password">Mot de passe</label>
                <input type="password" id="password" name="password"
                       placeholder="Mot de passe"
                       minlength="6" maxlength="60"
                       title="6 caract&egrave;res minimum"
                       required>
            </div>

            <button type="submit" class="btn-rouge">Cr&eacute;er le compte</button>

        </form>
    </main>

    <footer>
        <div class="persos">
            <img src="image/personnages/mario.png" alt="Mario">
            <img src="image/personnages/princessepeach.png" alt="Princesse Peach">
            <img src="image/personnages/luigi.png" alt="Luigi">
        </div>
        <p class="credits">developp&eacute; par <em>GEEK 4 FUN</em> 2025-2026</p>
    </footer>

</body>
</html>
