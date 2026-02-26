<?php
?>
<!doctype html>
<html lang="fa" dir="rtl">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <script src="https://cdn.tailwindcss.com"></script>
  <title><?= htmlspecialchars($post['title']) ?></title>
</head>
<body class="bg-[#F0F0F1]">
  <div class="max-w-[900px] mx-auto mt-10 bg-white p-6 rounded-xl">
    <img class="w-full mb-6"
         src="<?= BASE_URL ?>/dist<?= htmlspecialchars($post['image']) ?>"
         alt="<?= htmlspecialchars($post['alt']) ?>"
         style="object-fit:cover">

    <h1 class="text-[18px] font-bold mb-4"><?= htmlspecialchars($post['title']) ?></h1>

    <p class="leading-8 text-[14px]"><?= nl2br(htmlspecialchars($description)) ?></p>

    <div class="mt-6">
      <a class="text-gray-500" href="<?= BASE_URL ?>/">برگشت به صفحه اصلی</a>
    </div>
  </div>
</body>
</html>