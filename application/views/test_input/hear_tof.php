<html>
<head>
    <title>听力判断测试输入</title>
    <link rel="stylesheet" href="<?= base_url("css/bootstrap.css"); ?>">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<?= base_url("js/jquery-3.1.1.min.js"); ?>"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?= base_url("js/bootstrap.min.js"); ?>"></script>
    <link rel="stylesheet" href="<?php echo base_url('css/input_form.css');?>">
</head>
<body>
<div id="form_container">
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('test_input/hear_tof', array('id' => 'hear_tof_form','class'=>'form-horizontal')); ?>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="pronunciation_char">pronunciation character(发音字):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="pronunciation_char" name="pronunciation_char"
                    value="<?php if(!$result) echo set_value('pronunciation_char'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="picture_char">picture character(图片对应字):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="picture_char" name="picture_char"
                    value="<?php if(!$result) echo set_value('picture_char'); ?>">
        </div>
    </div>

    <div class="form-group">
        <p class="col-sm-3 control-label"><a class="btn btn-danger" href="<?php echo site_url('input_chose');?>">返回主页</a></p>
        <div class="col-sm-9">
            <input class="form-control btn btn-primary" id="submit" type="submit" value="确定">
        </div>
    </div>
    </form>
    <p id="result_message"><?php  echo $result_msg;?></p>
</div>
</body>
</html>