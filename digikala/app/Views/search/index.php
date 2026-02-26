<!doctype html>
<html lang="fa" dir="rtl">
<head>
  <meta charset="utf-8">
  <title>نتایج جستجو</title>
</head>
<body>

<h2>نتایج برای: <?= htmlspecialchars($query) ?></h2>

<?php if (empty($results)): ?>
  <p>موردی پیدا نشد</p>
<?php else: ?>
  <div style="display:flex; flex-wrap:wrap; gap:20px;">

    <?php foreach ($results as $item): ?>
      <?php
     
        if (empty($item['image'])) continue;

       
        $img = $item['image'];
        if (strpos($img, 'http') !== 0) {
          $img = BASE_URL . '/dist' . $img;
        }
      ?>

      <div style="width:200px; border:1px solid #ccc; padding:10px;">
        <img width="150" src="<?= htmlspecialchars($img) ?>" alt="">
        <p><?= htmlspecialchars($item['title']) ?></p>
      </div>

    <?php endforeach; ?>

  </div>
<?php endif; ?>

</body>
</html>