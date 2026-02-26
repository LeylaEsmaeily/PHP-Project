<!doctype html>
<html lang="fa" dir="rtl">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>پروفایل</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-[#F0F0F1]">

  <div class="min-h-screen flex items-center justify-center px-4">
    <div class="w-full max-w-[520px] bg-white rounded-2xl p-6 border border-gray-200">

      <div class="flex justify-center mb-6">
        <img src="<?= BASE_URL ?>/dist/images/header/logo.svg" alt="دیجی کالا" class="h-[40px]">
      </div>

      <h1 class="font-bold text-[18px] mb-4">پروفایل</h1>

      <?php if (!empty($user)): ?>
        <div class="space-y-2 text-[14px]">
          <div><span class="text-gray-500">نام:</span> <?= htmlspecialchars($user['fullname'] ?? '-') ?></div>
          <div><span class="text-gray-500">شماره:</span> <?= htmlspecialchars($user['phone'] ?? '-') ?></div>
          <div><span class="text-gray-500">عضویت:</span> <?= htmlspecialchars($user['created_at'] ?? '-') ?></div>
        </div>
      <?php endif; ?>

      <div class="mt-6 flex flex-wrap gap-2">

        <a class="inline-block bg-gray-900 text-white px-4 py-2 rounded-xl"
           href="<?= BASE_URL ?>/mvc.php?url=auth/logout">
           خروج
        </a>

        <a class="inline-block bg-white border border-gray-200 px-4 py-2 rounded-xl"
           href="<?= BASE_URL ?>/">
           صفحه اصلی
        </a>

        <a class="inline-block bg-blue-600 text-white px-4 py-2 rounded-xl"
           href="<?= BASE_URL ?>/mvc.php?url=auth/changePassword">
           تغییر رمز عبور
        </a>

        <a class="inline-block bg-red-600 text-white px-4 py-2 rounded-xl"
           href="<?= BASE_URL ?>/mvc.php?url=auth/deleteAccount"
           onclick="return confirm('مطمئنی میخوای اکانت رو حذف کنی؟');">
           حذف اکانت
        </a>

      </div>

    </div>
  </div>

</body>
</html>