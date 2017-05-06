<html>
<head>
    <title>听力判断测试输入</title>
    <link rel="stylesheet" href="<?php echo base_url('css/input_form.css');?>">
</head>
<body>
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('test_input/hear_tof', array('id' => 'hear_tof_form','class'=>'input_form')); ?>

    <div class="table_row">
    <label for="pronunciation_char">pronunciation character(发音字):</label>
    <input type="text" id="pronunciation_char" name="pronunciation_char" value="<?php if(!$result) echo set_value('pronunciation_char'); ?>">
    </div>

    <div class="table_row">

    <label for="picture_char">picture character(图片对应字):</label>
    <input type="text" id="picture_char" name="picture_char" value="<?php if(!$result) echo set_value('picture_char'); ?>">
    </div>

    <div class="table_row">
    <label for="tof_t">true or false(是否正确):</label>
    <input type="radio" id="tof_t" name="tof" value="1" checked="checked">true
    <input type="radio" id="tof_f" name="tof" value="0">false
    </div>

    <div class="table_row">
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    <input id="submit" type="submit" value="确定">
    </div>
    </form>
    <p id="result_message"><?php  echo $result_msg;?></p>
</body>
</html>