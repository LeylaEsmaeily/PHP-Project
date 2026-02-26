<?php
ini_set('display_errors','1');
error_reporting(E_ALL);

/* ---------- helpers ---------- */
function json_response($data) {
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    exit;
}

function pdo() {
    static $pdo = null;
    if ($pdo) return $pdo;

    $pdo = new PDO(
        "mysql:host=localhost;dbname=digikala_db;charset=utf8mb4",
        "root",
        ""
    );
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $pdo;
}

/* ---------- route path ---------- */
$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

$base = '/digikala/public';
$path = str_replace($base, '', $path);
if ($path === '') $path = '/';

/* ---------- API routes (JSON) ---------- */
if ($path === '/api/brands') {
    $rows = pdo()->query("SELECT id, image, alt FROM brands ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}

if ($path === '/api/selectedProducts') {
    $rows = pdo()->query("SELECT id, image, alt, price1, price2, takhfif FROM selected_products ORDER BY id DESC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}

if ($path === '/api/mainSlider') {
    $rows = pdo()->query("SELECT id, image FROM main_slider ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}

if ($path === '/api/category') {
    $rows = pdo()->query("SELECT id, title, image FROM category ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}

if ($path === '/api/category2') {
    $rows = pdo()->query("SELECT id, title, image FROM category2 ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}

if ($path === '/api/category4') {
    $rows = pdo()->query("SELECT id, title, subtitle, img1_1, img1_2, img2_1, img2_2 FROM category4 ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);

    $out = array_map(function($r) {
        return [
            'id' => (int)$r['id'],
            'title' => $r['title'],
            'subtitle' => $r['subtitle'],
            'images1' => [
                ['image' => $r['img1_1']],
                ['image' => $r['img1_2']],
            ],
            'images2' => [
                ['image' => $r['img2_1']],
                ['image' => $r['img2_2']],
            ],
        ];
    }, $rows);

    json_response($out);
}

if ($path === '/api/category5') {
    $rows = pdo()->query("SELECT id, title, subtitle, img1_1, img1_2, img2_1, img2_2 FROM category5 ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);

    $out = array_map(function($r) {
        return [
            'id' => (int)$r['id'],
            'title' => $r['title'],
            'subtitle' => $r['subtitle'],
            'images1' => [
                ['image' => $r['img1_1']],
                ['image' => $r['img1_2']],
            ],
            'images2' => [
                ['image' => $r['img2_1']],
                ['image' => $r['img2_2']],
            ],
        ];
    }, $rows);

    json_response($out);
}

if ($path === '/api/footer1') {
    $rows = pdo()->query("SELECT id, title, image, alt FROM footer1 ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}

if ($path === '/api/footer2') {
    $rows = pdo()->query("SELECT id, image, alt FROM footer2 ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}
if ($path === '/api/footer3') {
    $rows = pdo()->query("SELECT id, image, alt FROM footer3 ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}
if ($path === '/api/hottestLastFewHours') {
    $rows = pdo()->query("SELECT id, title, image, number FROM hottest_last_few_hours ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}
if ($path === '/api/incredibles') {
    $rows = pdo()->query("SELECT id, title, image, alt, price1, price2, takhfif FROM incredibles ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}
if ($path === '/api/incredibles2') {
    $rows = pdo()->query("SELECT id, link, image, alt, takhfif FROM incredibles2 ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}
if ($path === '/api/khandaniha') {
    $rows = pdo()->query("SELECT id, title, image, alt FROM khandaniha ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}
if ($path === '/api/menu') {
    $rows = pdo()->query("SELECT id, name, link, icon FROM menu ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}
if ($path === '/api/moreSales') {
    $rows = pdo()->query("SELECT id, title, image, number FROM more_sales ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}
if ($path === '/api/overview1') {
    $rows = pdo()->query("SELECT id, image, alt FROM overview1 ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}
if ($path === '/api/overview2') {
    $rows = pdo()->query("SELECT id, image, alt FROM overview2 ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}
if ($path === '/api/quickAccess') {
    $rows = pdo()->query("SELECT id, title, subtitles FROM quick_access ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);

    $out = array_map(function($r) {
        return [
            'id' => (int)$r['id'],
            'title' => $r['title'],
            'subtitles' => $r['subtitles'] ? json_decode($r['subtitles'], true) : []
        ];
    }, $rows);

    json_response($out);
}
if ($path === '/api/quickAccess2') {
    $rows = pdo()->query("SELECT id, images FROM quick_access2 ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);

    $out = array_map(function($r) {
        return [
            'id' => (int)$r['id'],
            'images' => $r['images'] ? json_decode($r['images'], true) : []
        ];
    }, $rows);

    json_response($out);
}
if ($path === '/api/story') {
    $rows = pdo()->query("SELECT id, title, image, live FROM story ORDER BY id ASC")
        ->fetchAll(PDO::FETCH_ASSOC);
    json_response($rows);
}

/* ---------- Home page  ---------- */
if ($path === '/') {
    $distIndex = __DIR__ . '/dist/index.html';   // مهم: / نه \

    if (!file_exists($distIndex)) {
        http_response_code(500);
        echo "dist/index.html پیدا نشد. اول Vite build بگیر یا مطمئن شو خروجی داخل public/dist ساخته میشه.";
        exit;
    }

    $html = file_get_contents($distIndex);

    $distBase = '/digikala/public/dist/';
    if (strpos($html, '<base') === false) {
        $html = preg_replace('/<head>/', '<head><base href="'.$distBase.'">', $html, 1);
    }

    echo $html;
    exit;
}

/* ---------- 404 ---------- */
http_response_code(404);
echo "404";
