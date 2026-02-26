<?php

require_once APP_PATH . '/Core/Controller.php';
require_once APP_PATH . '/Models/User.php';

class AuthController extends Controller
{
    public function login(): void
    {
        $error = null;

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $phone = trim($_POST['phone'] ?? '');
            $pass  = $_POST['password'] ?? '';

            $user = User::findByPhone($phone);

            if (!$user || !password_verify($pass, $user['password'])) {
                $error = 'شماره یا رمز اشتباه است';
            } else {
                $_SESSION['user_id'] = $user['id'];
                $this->redirect($this->url('auth/profile'));
            }
        }

        $this->view('auth/login', ['error' => $error]);
    }

    public function register(): void
    {
        $error = null;

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $fullname = trim($_POST['fullname'] ?? '');
            $phone    = trim($_POST['phone'] ?? '');
            $pass     = $_POST['password'] ?? '';

            if ($fullname === '' || $phone === '' || $pass === '') {
                $error = 'همه فیلدها الزامی است';
            } elseif (User::findByPhone($phone)) {
                $error = 'این شماره قبلا ثبت شده';
            } else {
                $hash = password_hash($pass, PASSWORD_DEFAULT);
                User::create($fullname, $phone, $hash);
                $this->redirect($this->url('auth/login'));
            }
        }

        $this->view('auth/register', ['error' => $error]);
    }

    public function profile(): void
    {
        if (!isset($_SESSION['user_id'])) {
            $this->redirect($this->url('auth/login'));
        }

        $user = User::findById((int)$_SESSION['user_id']);
        $this->view('auth/profile', ['user' => $user]);
    }

    public function logout(): void
    {
        session_destroy();
        $this->redirect($this->url('auth/login'));
    }

    public function me(): void
{
    header('Content-Type: application/json; charset=utf-8');

    if (!isset($_SESSION['user_id'])) {
        echo json_encode(['loggedIn' => false], JSON_UNESCAPED_UNICODE);
        return;
    }

    $user = User::findById((int)$_SESSION['user_id']);
    if (!$user) {
        echo json_encode(['loggedIn' => false], JSON_UNESCAPED_UNICODE);
        return;
    }

    echo json_encode([
        'loggedIn' => true,
        'id' => (int)$user['id'],
        'fullname' => $user['fullname'] ?? 'کاربر',
        'phone' => $user['phone'] ?? ''
    ], JSON_UNESCAPED_UNICODE);
}
public function changePassword(): void
{
    if (!isset($_SESSION['user_id'])) {
        $this->redirect($this->url('auth/login'));
    }

    $error = null;
    $success = null;

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $newPass = $_POST['new_password'] ?? '';

        if (strlen($newPass) < 4) {
            $error = 'رمز باید حداقل ۴ کاراکتر باشد';
        } else {
            $hash = password_hash($newPass, PASSWORD_DEFAULT);
            User::updatePassword((int)$_SESSION['user_id'], $hash);
            $success = 'رمز با موفقیت تغییر کرد';
        }
    }

    $this->view('auth/changePassword', [
        'error' => $error,
        'success' => $success
    ]);
}

public function deleteAccount(): void
{
    if (!isset($_SESSION['user_id'])) {
        $this->redirect($this->url('auth/login'));
    }

    User::deleteById((int)$_SESSION['user_id']);

    session_destroy();

    $this->redirect($this->url('auth/register'));
}
}