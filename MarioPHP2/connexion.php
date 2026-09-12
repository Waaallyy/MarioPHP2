<?php 
require_once __DIR__ . '/Include/db.php';   


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $login      = trim($_POST['login'] ?? '');
    $password = $_POST['password'] ?? '';

    $stmt = $pdo->prepare('SELECT ID, login, password, admin FROM user WHERE login = :login');
    $stmt->execute([':login' => $login]);
    $utilisateur = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($utilisateur && password_verify($password, $utilisateur['password'])) {
        session_regenerate_id(true);
        $_SESSION['utilisateur_id'] = $utilisateur['ID'];
        $_SESSION['login']          = $utilisateur['login'];
        $_SESSION['admin']          = (int) $utilisateur['admin'];
        header('Location: admin.php');
        exit;
    }
    $erreur = 'Login ou mot de passe incorrect.';
} ?>


<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page de connexion - Univers de Mario</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="page-auth">

    <?php include __DIR__ . '/Include/header.php'; ?>

    <main>
        <h2 class="titre-auth">Page de connexion</h2>
        <?php if (!empty($erreur)) : ?>
    <p style="color: #f30b0e; text-align: center;"><?= htmlspecialchars($erreur) ?></p>
<?php endif; ?>

        <form class="carte" action="connexion.php" method="post">

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

            <button type="submit" class="btn-rouge">Valider</button>

        </form>
    </main>

    <?php include __DIR__ . '/Include/footer.php'; ?>

</body>
</html>
