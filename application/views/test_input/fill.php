<html>
<head>
    <title>填空输入</title>
</head>
<body>
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('test_input/fill', array('id' => 'fill_form','class'=>'input_form')); ?>

    <label for="choice1">word 1(选项):</label>
    <input type="text" id="choice1" name="choice1" value="<?php if(!$result) echo set_value('choice1'); ?>"><br/>

    <label for="choice2">word 2(选项):</label>
    <input type="text" id="choice2" name="choice2" value="<?php if(!$result) echo set_value('choice2'); ?>"><br/>

    <label for="choice3">word 3(选项):</label>
    <input type="text" id="choice3" name="choice3" value="<?php if(!$result) echo set_value('choice3'); ?>"><br/>

    <label for="choice4">word 4(选项):</label>
    <input type="text" id="choice4" name="choice4" value="<?php if(!$result) echo set_value('choice4'); ?>"><br/>

    <label for="choice5">word 5(选项):</label>
    <input type="text" id="choice5" name="choice5" value="<?php if(!$result) echo set_value('choice5'); ?>"><br/>

    <label for="sentence1">sentence 1(题目):</label>
    <input type="text" id="sentence1" name="sentence1" value="<?php if(!$result) echo set_value('sentence1'); ?>"><br/>

    <label for="sentence2">sentence 2(题目):</label>
    <input type="text" id="sentence2" name="sentence2" value="<?php if(!$result) echo set_value('sentence2'); ?>"><br/>

    <label for="sentence3">sentence 1(题目):</label>
    <input type="text" id="sentence3" name="sentence3" value="<?php if(!$result) echo set_value('sentence3'); ?>"><br/>

    <label for="sentence4">sentence 1(题目):</label>
    <input type="text" id="sentence4" name="sentence4" value="<?php if(!$result) echo set_value('sentence4'); ?>"><br/>

    <label for="sentence5">sentence 1(题目):</label>
    <input type="text" id="sentence5" name="sentence5" value="<?php if(!$result) echo set_value('sentence5'); ?>"><br/>

    <label for="correct_order">correct order(正确答案顺序):</label>
    <input type="text" id="correct_order" name="correct_order" value="<?php if(!$result) echo set_value('correct_order'); ?>"><br/>

    <input type="submit" value="确定">
    <p id="result_message"><?php if($result) echo '录入成功';?></p>
    </form>
    <p><a href="<?php echo site_url('test_input/index');?>">返回主页</a> </p>
</body>
</html>