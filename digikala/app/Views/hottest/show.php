<!doctype html>
<html lang="fa" dir="rtl">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<script src="https://cdn.tailwindcss.com"></script>
<title><?= htmlspecialchars($item['title']) ?></title>
</head>

<body class="bg-[#F0F0F1]">

<div class="max-w-[800px] mx-auto mt-10 bg-white p-6 rounded-xl">

<img class="w-full mb-6 rounded-xl"
     src="<?= BASE_URL ?>/dist<?= htmlspecialchars($item['image']) ?>"
     alt=""
     style="object-fit:cover">

<h1 class="text-[20px] font-bold text-center">
<?= htmlspecialchars($item['title']) ?>
</h1>

<div class="mt-6 text-center">
<a class="text-gray-500" href="<?= BASE_URL ?>/">برگشت به صفحه اصلی</a>
</div>

</div>

</body>
</html>