<?php
/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use webvimark\modules\UserManagement\components\GhostMenu;
use webvimark\modules\UserManagement\components\GhostNav;
use webvimark\modules\UserManagement\UserManagementModule;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <?php $this->head() ?>
    </head>
    <body>
        <?php $this->beginBody() ?>

        <div class="wrap">
            <?php
            NavBar::begin([
                //'brandLabel' => Html::img('@web/images/icon-facs.png', ['alt'=>'some', 'class'=>'thing']) . 'Niagara Crown Ward Championship Team',
                'brandLabel' => 'Niagara Crown Ward Championship Team',
                'brandUrl' => Yii::$app->homeUrl,
                'options' => [
                    'class' => 'navbar-inverse navbar-fixed-top',
                ],
            ]);

            echo GhostNav::widget([
                'encodeLabels' => false,
                'activateParents' => true,
                'options' => ['class' => 'navbar-nav navbar-right'],
                'items' => [
                    [
                        'label' => 'Backend routes',
                        'items' => UserManagementModule::menuItems()
                    ],
                    [
                        'label' => 'Frontend routes',
                        'items' => [
                            ['label' => 'Login', 'url' => ['/user-management/auth/login']],
                            ['label' => 'Logout', 'url' => ['/user-management/auth/logout']],
                            ['label' => 'Registration', 'url' => ['/user-management/auth/registration']],
                            ['label' => 'Change own password', 'url' => ['/user-management/auth/change-own-password']],
                            ['label' => 'Password recovery', 'url' => ['/user-management/auth/password-recovery']],
                            ['label' => 'E-mail confirmation', 'url' => ['/user-management/auth/confirm-email']],
                        ],
                    ],
                ],
            ]);

            NavBar::end();
            ?>

            <div class="container">
            <?=
            Breadcrumbs::widget([
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ])
            ?>
                <?= $content ?>
            </div>
        </div>

        <footer class="footer">
            <div class="container">
                <p class="pull-left">&copy;  <?= date('Y') ?> Niagara Crown Ward Championship Team</p>

                <p class="pull-right"><?php //Yii::powered() ?></p>
            </div>
        </footer>

<?php $this->endBody() ?>
    </body>
</html>
<?php
$css = <<<CSS
html, body {
	background: #fff;
	-webkit-box-shadow: inset 0 0 100px rgba(0,0,0,.5);
	box-shadow: inset 0 0 100px rgba(0,0,0,.5);
	height: 100%;
	min-height: 100%;
	position: relative;
}
#login-wrapper {
	position: relative;
	top: 30%;
}
#login-wrapper .registration-block {
	margin-top: 15px;
}
CSS;

$this->registerCss($css);
?>
        <?php $this->endPage() ?>


