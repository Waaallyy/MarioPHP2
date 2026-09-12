<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Les objets - Univers de Mario</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <?php include __DIR__ . '/Include/header.php'; ?>

    <main>
        <h2 class="titre-page">Les Objets avec Mario</h2>

        <table class="tableau tableau-objets">
            <colgroup>
                <col class="c-nom">
                <col class="c-desc">
                <col class="c-annee">
                <col class="c-role">
                <col class="c-image">
            </colgroup>
            <thead>
                <tr>
                    <th>nom</th>
                    <th>description</th>
                    <th>année de création</th>
                    <th>role</th>
                    <th>image</th>
                </tr>
            </thead>
            <tbody>
                <?php
                require_once __DIR__ . '/Include/db.php';
                $stmt = $pdo->query('SELECT * FROM objets');
                $objets = $stmt->fetchAll(PDO::FETCH_ASSOC);
                ?>
                <?php foreach ($objets as $objet) : ?>
                        <tr>
                            <td class="c-nom"><?= htmlspecialchars($objet['nom']); ?></td>
                            <td class="c-desc"><?= htmlspecialchars($objet['description']); ?></td>
                            <td class="c-annee"><?= htmlspecialchars($objet['date']); ?></td>
                            <td class="c-role"><?= htmlspecialchars($objet['role']); ?></td>
                            <td class="c-image">
                                <img src="image/objets/<?= htmlspecialchars($objet['image']); ?>.png" 
                                alt="<?= htmlspecialchars($objet['nom']); ?>">
                            </td>
                        </tr>
                    <?php endforeach; ?>
            </tbody>
        </table>

    </main>

    <?php include __DIR__ . '/Include/footer.php'; ?>

</body>
</html>
