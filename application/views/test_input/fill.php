<html>
<head>
    <title>填空输入</title>
    <link rel="stylesheet" href="<?php echo base_url('css/input_form.css');?>">
</head>
<body>
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('test_input/fill', array('id' => 'fill_form','class'=>'input_form')); ?>

    <div class="table_row">
    <label for="choice1">word 1(选项):</label>
    <input type="text" id="choice1" name="choice1" value="<?php if(!$result) echo set_value('choice1'); ?>"><br/>
    </div>

    <div class="table_row">
    <label for="choice2">word 2(选项):</label>
    <input type="text" id="choice2" name="choice2" value="<?php if(!$result) echo set_value('choice2'); ?>"><br/>
    </div>

    <div class="table_row">
    <label for="choice3">word 3(选项):</label>
    <input type="text" id="choice3" name="choice3" value="<?php if(!$result) echo set_value('choice3'); ?>"><br/>
    </div>

    <div class="table_row">
    <label for="choice4">word 4(选项):</label>
    <input type="text" id="choice4" name="choice4" value="<?php if(!$result) echo set_value('choice4'); ?>"><br/>
    </div>

    <div class="table_row">
    <label for="choice5">word 5(选项):</label>
    <input type="text" id="choice5" name="choice5" value="<?php if(!$result) echo set_value('choice5'); ?>">
    </div>

    <div class="table_row">
    <label for="sentence1">sentence 1(题目):</label>
    <input type="text" id="sentence1" name="sentence1" value="<?php if(!$result) echo set_value('sentence1'); ?>">
    </div>

    <div class="table_row">
    <label for="sentence2">sentence 2(题目):</label>
    <input type="text" id="sentence2" name="sentence2" value="<?php if(!$result) echo set_value('sentence2'); ?>">
    </div>

    <div class="table_row">
    <label for="sentence3">sentence 1(题目):</label>
    <input type="text" id="sentence3" name="sentence3" value="<?php if(!$result) echo set_value('sentence3'); ?>">
    </div>

    <div class="table_row">
    <label for="sentence4">sentence 1(题目):</label>
    <input type="text" id="sentence4" name="sentence4" value="<?php if(!$result) echo set_value('sentence4'); ?>">
    </div>

    <div class="table_row">
    <label for="sentence5">sentence 1(题目):</label>
    <input type="text" id="sentence5" name="sentence5" value="<?php if(!$result) echo set_value('sentence5'); ?>">
    </div>

    <div class="table_row">
    <label for="correct_order">correct order(正确答案顺序):</label>
    <input type="text" id="correct_order" name="correct_order" value="<?php if(!$result) echo set_value('correct_order'); ?>">
    </div>

    <div class="table_row">
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    <input id="submit" type="submit" value="确定">
    </div>
    </form>
    <p id="result_message"><?php  echo $result_msg;?></p>
</body>
</html>