<!doctype html>
<html lang="fa" dir="rtl">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>تغییر رمز عبور</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-[#F0F0F1]">

  <div class="min-h-screen flex items-center justify-center px-4">
    <div class="w-full max-w-[420px] bg-white rounded-2xl p-6 border border-gray-200">

      <div class="flex justify-center mb-6">
        <img src="<?= BASE_URL ?>/dist/images/header/logo.svg"
             alt="دیجی کالا"
             class="h-[40px]">
      </div>

      <h1 class="font-bold text-[18px] mb-5 text-center">
        تغییر رمز عبور
      </h1>

      <?php if (!empty($error)): ?>
        <div class="mb-4 p-3 bg-red-50 text-red-600 rounded-xl text-sm">
          <?= htmlspecialchars($error) ?>
        </div>
      <?php endif; ?>

      <?php if (!empty($success)): ?>
        <div class="mb-4 p-3 bg-green-50 text-green-600 rounded-xl text-sm">
          <?= htmlspecialchars($success) ?>
        </div>
      <?php endif; ?>

      <form method="POST" class="space-y-4">

        <input
          type="password"
          name="new_password"
          placeholder="رمز جدید"
          required
          class="w-full border border-gray-200 rounded-xl px-4 py-2 outline-none focus:border-blue-500"
        >

        <button
          type="submit"
          class="w-full bg-blue-600 text-white py-2 rounded-xl hover:bg-blue-700 transition"
        >
          ثبت تغییر
        </button>

      </form>

      <div class="mt-5 text-center">
        <a href="<?= BASE_URL ?>/mvc.php?url=auth/profile"
           class="text-sm text-gray-500 hover:text-gray-700">
           بازگشت به پروفایل
        </a>
      </div>

    </div>
  </div>

</body>
</html>