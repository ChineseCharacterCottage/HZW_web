<html>
<head>
    <title>听力选择测试输入</title>
</head>
<body>
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('test_input/hear_chose', array('id' => 'hear_chose_form','class'=>'input_form')); ?>

    <label for="choice_a">A(选项A对应字):</label>
    <input type="text" id="choice_a" name="choice_a" value="<?php if(!$result) echo set_value('choice_a'); ?>" required><br/>

    <label for="choice_b">B(选项B对应字):</label>
    <input type="text" id="choice_b" name="choice_b" value="<?php if(!$result) echo set_value('choice_b'); ?>" required><br/>

    <label for="choice_c">C(选项C对应字):</label>
    <input type="text" id="choice_c" name="choice_c" value="<?php if(!$result) echo set_value('choice_c'); ?>" required><br/>

    <label for="choice_d">D(选项D对应字):</label>
    <input type="text" id="choice_d" name="choice_d" value="<?php if(!$result) echo set_value('choice_d'); ?>" required><br/>

    <label for="correct_choice_a">correct choice(正确选项):</label>
    <input type="radio" id="correct_choice_a" name="correct_choice" value="a" checked="checked">a
    <input type="radio" id="correct_choice_b" name="correct_choice" value="b">b
    <input type="radio" id="correct_choice_c" name="correct_choice" value="c">c
    <input type="radio" id="correct_choice_d" name="correct_choice" value="d">d<br/>

    <input type="submit" value="确定">
    <p id="result_message"><?php  echo $result_msg;?></p>
    </form>
    <p><a href="<?php echo site_url('test_input/index');?>">返回主页</a> </p>
</body>
</html>