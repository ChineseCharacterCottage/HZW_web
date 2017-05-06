<html>
<head>
    <title>偏旁输入</title>
</head>
<body>
    <?php //echo $error ?>
    <?php echo form_open_multipart('component_input', array('id' => 'component_input_form','class'=>'input_form')); ?>

    <label for="shape">shape(字形):</label>
    <input type="text" id="shape" name="shape" value="<?php if(!$result) echo set_value('shape'); ?>"><br/>

    <label for="characters">characters(例字):</label>
    <input type="text" id="characters" name="characters" value="<?php if(!$result) echo set_value('characters'); ?>"><br/>

    <label for="voice_or_shape">shape or voice?(形旁还是声旁？):</label>
    <input type="radio" id="voice_or_shape" name="voice_or_shape" value="s" checked="checked">shape
    <input type="radio" id="voice_or_shape" name="voice_or_shape" value="v">voice<br/>

    <label for="explanation">explanation(说明):</label>
    <input type="text" id="explanation" name="explanation" value="<?php if(!$result) echo set_value('explanation'); ?>"><br/>

    <input type="submit" value="添加偏旁">
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    </from>

    <?php
    if($result)
        echo '<p>添加成功</p>';
    else
        echo validation_errors(); ?>
</body>
</html>