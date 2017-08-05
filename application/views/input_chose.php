<div id="container">
    <ul id="nav" class="nav nav-tabs">
        <li id="nav1" role="presentation" class="active"><a href="#" onclick="change_page(1)">Character</a></li>
        <li id="nav2" role="presentation"><a href="#" onclick="change_page(2)">Test</a></li>
        <li id="nav3" role="presentation"><a href="#" onclick="change_page(3)">Search & Modify</a></li>
    </ul>

    <div id="pager1">
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('character/input_and_update') ?>">汉字输入</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('radical/input') ?>">部首输入</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('component/input') ?>">偏旁输入</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('pictogram_input/index') ?>">象形字输入</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('knowledge_input/index') ?>">Knowledge输入</a>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('main_learning/insert') ?>">偏旁学习顺序输入</a></p>
        </p>
    </div>

    <div id="pager2">
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('test_input/hear_chose'); ?>">听力选择输入</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('test_input/hear_tof'); ?>">听力判断输入</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('test_input/fill'); ?>">填空输入</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('test_input/tof'); ?>">判断输入</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('test_input/component_chose'); ?>">部件测试输入</a></p>
    </div>

    <div id="pager3">
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('character/search') ?>">汉字搜索与修改</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('radical/search') ?>">部首搜索与修改</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('component/search') ?>">偏旁搜索与修改</a></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="<?php echo site_url('main_learning/search') ?>">偏旁学习顺序搜索与修改</a></p>
    </div>
</div>


<script>
    var now_page = 1;
    $(document).ready(function () {
        $("div#pager2").hide();
        $("div#pager3").hide();
    });
    function change_page(target) {
        $("div#pager" + now_page).hide();
        $("div#pager" + target).show();
        $("li#nav" + now_page).removeClass("active");
        $("li#nav" + target).addClass("active");
        now_page = target;
    }
</script>