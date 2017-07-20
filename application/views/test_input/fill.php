<html>
<head>
    <title>填空输入</title>
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
    <?php echo form_open_multipart('test_input/fill', array('id' => 'fill_form','class'=>'form-horizontal')); ?>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="choice1">word 1(选项):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="choice1" name="choice1" value="<?php if(!$result) echo set_value('choice1'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="choice2">word 2(选项):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="choice2" name="choice2" value="<?php if(!$result) echo set_value('choice2'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="choice3">word 3(选项):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="choice3" name="choice3" value="<?php if(!$result) echo set_value('choice3'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="choice4">word 4(选项):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="choice4" name="choice4" value="<?php if(!$result) echo set_value('choice4'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="choice5">word 5(选项):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="choice5" name="choice5" value="<?php if(!$result) echo set_value('choice5'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="sentence1">sentence 1(题目):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="sentence1" name="sentence1" value="<?php if(!$result) echo set_value('sentence1'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="sentence2">sentence 2(题目):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="sentence2" name="sentence2" value="<?php if(!$result) echo set_value('sentence2'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="sentence3">sentence 1(题目):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="sentence3" name="sentence3" value="<?php if(!$result) echo set_value('sentence3'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="sentence4">sentence 1(题目):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="sentence4" name="sentence4" value="<?php if(!$result) echo set_value('sentence4'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="sentence5">sentence 1(题目):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="sentence5" name="sentence5" value="<?php if(!$result) echo set_value('sentence5'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="correct_order">correct order(正确答案顺序):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="correct_order" name="correct_order" value="<?php if(!$result) echo set_value('correct_order'); ?>">
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