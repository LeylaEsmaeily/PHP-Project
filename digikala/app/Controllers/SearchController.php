<?php

class SearchController extends Controller
{
    public function index(): void
    {
        $q = $_GET['q'] ?? '';
        $q = trim($q);

        if ($q === '') {
            $this->view('search/index', [
                'results' => [],
                'query' => $q
            ]);
            return;
        }

        $pdo = Database::connect();
        $like = "%$q%";
        $results = [];

        $tables = [
            'selected_products',
            'more_sales',
            'incredibles',
            'hottest_last_few_hours',
            'category2',
            'category4',
            'category5',
            'brands',
            'khandaniha'
        ];

        foreach ($tables as $table) {

            if ($table === 'category4' || $table === 'category5') {
                $stmt = $pdo->prepare("
                    SELECT id, title, img1_1 AS image, '$table' AS source
                    FROM $table
                    WHERE title LIKE ? OR subtitle LIKE ?
                ");
                $stmt->execute([$like, $like]);
                $results = array_merge($results, $stmt->fetchAll(PDO::FETCH_ASSOC));
                continue;
            }
        
            $checkTitle = $pdo->query("SHOW COLUMNS FROM $table LIKE 'title'");
            if ($checkTitle->rowCount() == 0) {
                continue;
            }
        
            $checkImage = $pdo->query("SHOW COLUMNS FROM $table LIKE 'image'");
            $hasImage = $checkImage->rowCount() > 0;
        
            if ($hasImage) {
                $stmt = $pdo->prepare("
                    SELECT id, title, image, '$table' AS source
                    FROM $table
                    WHERE title LIKE ?
                ");
                $stmt->execute([$like]);
            } else {
                $stmt = $pdo->prepare("
                    SELECT id, title, NULL AS image, '$table' AS source
                    FROM $table
                    WHERE title LIKE ?
                ");
                $stmt->execute([$like]);
            }
        
            $results = array_merge($results, $stmt->fetchAll(PDO::FETCH_ASSOC));
        }

        $this->view('search/index', [
            'results' => $results,
            'query' => $q
        ]);
    }
}