<!doctype html>
<html lang="fa" dir="rtl">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <script src="https://cdn.tailwindcss.com"></script>
  <title>جزئیات محصول</title>
</head>

<body class="bg-[#F0F0F1]">

  <div class="max-w-[900px] mx-auto mt-10 bg-white p-6 rounded-xl">

    <div class="flex justify-center">
      <img class="w-[320px] h-[320px] rounded-xl"
           src="<?= BASE_URL ?>/dist<?= htmlspecialchars($item['image']) ?>"
           alt="<?= htmlspecialchars($item['alt']) ?>"
           style="object-fit:cover">
    </div>

    <div class="mt-6 flex flex-col gap-3 items-center">

      <div class="text-[14px] text-gray-600">
        alt: <?= htmlspecialchars($item['alt']) ?>
      </div>

      <div class="flex items-center gap-3">
        <span class="bg-red-500 text-white px-3 py-1 rounded-lg font-custom2 text-[13px]">
          <?= htmlspecialchars($item['takhfif'] ?? '') ?>
        </span>
      </div>

      <div class="flex items-center gap-2 text-[18px] font-bold">
        <span class="font-custom2"><?= htmlspecialchars($item['price2'] ?? '') ?></span>
        <img class="w-[18px] h-[18px]" src="<?= BASE_URL ?>/dist/images/incredibles/price.svg" />
      </div>

      <div class="text-neutral-300 line-through text-[14px] font-custom2">
        <?= htmlspecialchars($item['price1'] ?? '') ?>
      </div>

    </div>

    <div class="mt-8 text-center">
      <a class="text-gray-500" href="<?= BASE_URL ?>/">برگشت به صفحه اصلی</a>
    </div>

  </div>

</body>
</html>