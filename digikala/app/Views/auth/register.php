<!doctype html>
<html lang="fa" dir="rtl">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>ثبت نام</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-[#F0F0F1]">

  <div class="min-h-screen flex items-center justify-center px-4">
    <div class="w-full max-w-[420px] bg-white rounded-2xl p-6 border border-gray-200">

      <div class="flex justify-center mb-6">
        <img src="<?= BASE_URL ?>/dist/images/header/logo.svg" alt="دیجی کالا" class="h-[40px]">
      </div>

      <h1 class="font-bold text-[18px] mb-4">ثبت نام</h1>

      <?php if (!empty($error)): ?>
        <div class="bg-red-50 text-red-600 text-[13px] p-3 rounded-xl mb-3">
          <?= htmlspecialchars($error) ?>
        </div>
      <?php endif; ?>

      <form method="post" class="space-y-3">
        <input name="fullname" class="w-full border rounded-xl p-3 text-[14px]" placeholder="نام و نام خانوادگی">
        <input name="phone" class="w-full border rounded-xl p-3 text-[14px]" placeholder="شماره موبایل">
        <input name="password" type="password" class="w-full border rounded-xl p-3 text-[14px]" placeholder="رمز عبور">
        <button class="w-full bg-[#ED1944] text-white rounded-xl p-3 font-bold">ثبت نام</button>
      </form>

      <div class="text-[13px] mt-4">
        حساب داری؟
        <a class="text-[#19BFD3]" href="<?= BASE_URL ?>/mvc.php?url=auth/login">ورود</a>
      </div>

      <div class="text-[13px] mt-3">
        <a class="text-gray-500" href="<?= BASE_URL ?>/">برگشت به صفحه اصلی</a>
      </div>

    </div>
  </div>

</body>
</html>