<!doctype html>
<html lang="fa" dir="rtl">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <script src="https://cdn.tailwindcss.com"></script>
  <title><?= htmlspecialchars($item['title']) ?></title>
</head>

<body class="bg-[#F0F0F1]">
  <div class="max-w-[900px] mx-auto mt-10 bg-white p-6 rounded-xl">

    <h1 class="text-[18px] font-bold mb-2 font-custom1"><?= htmlspecialchars($item['title']) ?></h1>
    <p class="text-[13px] text-gray-500 mb-6 font-custom1"><?= htmlspecialchars($item['subtitle']) ?></p>

    <div class="grid grid-cols-2 gap-4">
      <img class="w-full h-[220px] rounded-xl" style="object-fit:cover"
           src="<?= BASE_URL ?>/dist<?= htmlspecialchars($item['img1_1']) ?>" alt="">
      <img class="w-full h-[220px] rounded-xl" style="object-fit:cover"
           src="<?= BASE_URL ?>/dist<?= htmlspecialchars($item['img1_2']) ?>" alt="">
      <img class="w-full h-[220px] rounded-xl" style="object-fit:cover"
           src="<?= BASE_URL ?>/dist<?= htmlspecialchars($item['img2_1']) ?>" alt="">
      <img class="w-full h-[220px] rounded-xl" style="object-fit:cover"
           src="<?= BASE_URL ?>/dist<?= htmlspecialchars($item['img2_2']) ?>" alt="">
    </div>

    <div class="mt-8 text-center">
      <a class="text-gray-500" href="<?= BASE_URL ?>/">برگشت به صفحه اصلی</a>
    </div>

  </div>
</body>
</html>