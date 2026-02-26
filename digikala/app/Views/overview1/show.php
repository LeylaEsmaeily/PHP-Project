<!doctype html>
<html lang="fa" dir="rtl">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <script src="https://cdn.tailwindcss.com"></script>
  <title>نمایش تصویر</title>
</head>

<body class="bg-[#F0F0F1]">

  <div class="max-w-[800px] mx-auto mt-10 bg-white p-6 rounded-xl text-center">

    <img class="w-full rounded-xl mb-6"
         src="<?= BASE_URL ?>/dist<?= htmlspecialchars($item['image']) ?>"
         alt="<?= htmlspecialchars($item['alt']) ?>"
         style="object-fit:cover">

    <p class="text-[14px] text-gray-600">
      <?= htmlspecialchars($item['alt']) ?>
    </p>

    <div class="mt-6">
      <a class="text-gray-500" href="<?= BASE_URL ?>/">برگشت به صفحه اصلی</a>
    </div>

  </div>

</body>
</html>