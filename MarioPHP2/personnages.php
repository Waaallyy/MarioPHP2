<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Les personnages - Univers de Mario</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <?php include __DIR__ . '/Include/header.php'; ?>

    <main>
        <h2 class="titre-page">Les personnages</h2>

        <table class="tableau tableau-personnages">
            <colgroup>
                <col class="c-id">
                <col class="c-nom">
                <col class="c-desc">
                <col class="c-annee">
                <col class="c-role">
            </colgroup>
            <thead>
                <tr>
                    <th>id</th>
                    <th>nom</th>
                    <th>description</th>
                    <th>date apparition</th>
                    <th>role</th>
                </tr>
            </thead>
            <tbody>
               <?php
                require_once __DIR__ . '/Include/db.php';
                $stmt = $pdo->query('SELECT * FROM personnages');
                $personnages = $stmt->fetchAll(PDO::FETCH_ASSOC);
                ?>
                <?php foreach ($personnages as $personnage) : ?>
                        <tr>
                            <td class="c-id"><?= htmlspecialchars($personnage['ID']); ?></td>
                            <td class="c-nom"><?= htmlspecialchars($personnage['nom']); ?></td>
                            <td class="c-desc"><?= htmlspecialchars($personnage['description']); ?></td>
                            <td class="c-date"><?= htmlspecialchars($personnage['date']); ?></td>
                            <td class="c-role"><?= htmlspecialchars($personnage['role']); ?></td>
                        </tr>
                    <?php endforeach; ?>
            </tbody>
        </table>

    </main>

    <?php include __DIR__ . '/Include/footer.php'; ?>

</body>
</html>
