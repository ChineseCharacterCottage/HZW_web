<html>
<head>
    <title>听力选择测试输入</title>
    <link rel="stylesheet" href="<?php echo base_url('css/input_form.css');?>">
</head>
<body>
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('test_input/hear_chose', array('id' => 'hear_chose_form','class'=>'input_form')); ?>

    <div class="table_row">
    <label for="choice_a">A(选项A对应字):</label>
    <input type="text" id="choice_a" name="choice_a" value="<?php if(!$result) echo set_value('choice_a'); ?>" required>
    </div>

    <div class="table_row">
    <label for="choice_b">B(选项B对应字):</label>
    <input type="text" id="choice_b" name="choice_b" value="<?php if(!$result) echo set_value('choice_b'); ?>" required>
    </div>

    <div class="table_row">
    <label for="choice_c">C(选项C对应字):</label>
    <input type="text" id="choice_c" name="choice_c" value="<?php if(!$result) echo set_value('choice_c'); ?>" required>
    </div>

    <div class="table_row">
    <label for="choice_d">D(选项D对应字):</label>
    <input type="text" id="choice_d" name="choice_d" value="<?php if(!$result) echo set_value('choice_d'); ?>" required>
    </div>

    <div class="table_row">
    <label for="correct_choice_a">correct choice(正确选项):</label>
    <input type="radio" id="correct_choice_a" name="correct_choice" value="a" checked="checked">a
    <input type="radio" id="correct_choice_b" name="correct_choice" value="b">b
    <input type="radio" id="correct_choice_c" name="correct_choice" value="c">c
    <input type="radio" id="correct_choice_d" name="correct_choice" value="d">d
    </div>

    <div class="table_row">
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    <input id="submit" type="submit" value="确定">
    </div>
    </form>
    <p id="result_message"><?php  echo $result_msg;?></p>
</body>
</html>