<html>
<head>
    <title><?=$title?></title>
    <link rel="stylesheet" href="<?= base_url("css/bootstrap.css"); ?>">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<?= base_url("js/jquery-3.1.1.min.js"); ?>"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?= base_url("js/bootstrap.min.js"); ?>"></script>

    <?php
    switch ($title){
        case '模式选择':
            echo '<link rel="stylesheet" href="'. base_url("css/chose_page.css").'">';break;
        case '汉字搜索':
        case '部件搜索':
        case '部首搜索':
            echo '<link rel="stylesheet" href="'. base_url("css/search_page.css").'">';break;
        default:
            echo '<link rel="stylesheet" href="'. base_url("css/input_form.css").'">';break;
    }
    ?>
</head>
<body>
