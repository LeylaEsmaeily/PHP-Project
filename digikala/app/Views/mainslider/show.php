<!doctype html>
<html lang="fa" dir="rtl">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <script src="https://cdn.tailwindcss.com"></script>
  <title>اسلایدر</title>
</head>
<body class="bg-[#F0F0F1]">
  <div class="max-w-[900px] mx-auto mt-10 bg-white p-6 rounded-xl">
    <div class="flex justify-center">
      <img class="w-full max-h-[520px] rounded-xl"
           src="<?= BASE_URL ?>/dist<?= htmlspecialchars($item['image']) ?>"
           alt=""
           style="object-fit:cover">
    </div>

    <div class="mt-8 text-center">
      <a class="text-gray-500" href="<?= BASE_URL ?>/">برگشت به صفحه اصلی</a>
    </div>
  </div>
</body>
</html>