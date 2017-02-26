<html>
<head>
    <title>判断测试输入</title>
</head>
<body>
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('test_input/tof', array('id' => 'tof_form','class'=>'input_form')); ?>

    <label for="character">character(字形):</label>
    <input type="text" id="character" name="character" value="<?php if(!$result) echo set_value('character'); ?>"><br/>

    <label for="picture_char">picture character(图片对应字):</label>
    <input type="text" id="picture_char" name="picture_char" value="<?php if(!$result) echo set_value('picture_char'); ?>"><br/><hr/>

    <label for="tof_t">true or false(是否正确):</label>
    <input type="radio" id="tof_t" name="tof" value="1" checked="checked">true
    <input type="radio" id="tof_f" name="tof" value="0">false<br/>

    <input type="submit" value="确定">
    <p id="result_message"><?php  echo $result_msg;?></p>
    </form>
    <p><a href="<?php echo site_url('test_input/index');?>">返回主页</a> </p>
</body>
</html>