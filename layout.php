<?php
require_once 'config.php';

$controller = new PresenteController();
//$controller-><método do controller a ser chamado>();
?>
<!DOCTYPE html>
<html lang="pt">

<?php include ROOT_PATH . '/bootstrap/include/head.php'; ?>

    <body>



        <div class="container">
            <div class="brand">Presentes.meu</div>
            <?php include_once ROOT_PATH . '/bootstrap/include/nav.php'; ?>

        </div>

    </body>

</html>