<html>
<head>
    <title>偏旁输入</title>
    <link rel="stylesheet" href="<?php echo base_url('css/input_form.css');?>">
</head>
<body>
    <?php //echo $error ?>
    <?php echo form_open_multipart('component_input', array('id' => 'component_input_form','class'=>'input_form')); ?>

    <div class="table_row">
    <label for="shape">shape(字形):</label>
    <input type="text" id="shape" name="shape" value="<?php if(!$result) echo set_value('shape'); ?>"><br/>
    </div>

    <div class="table_row">
    <label for="characters">characters(例字):</label>
    <input type="text" id="characters" name="characters" value="<?php if(!$result) echo set_value('characters'); ?>"><br/>
    </div>

    <div class="table_row">
    <label for="voice_or_shape">shape or voice?(形旁还是声旁？):</label>
    <input type="radio" id="voice_or_shape" name="voice_or_shape" value="s" checked="checked">shape
    <input type="radio" id="voice_or_shape" name="voice_or_shape" value="v">voice<br/>
    </div>

    <div class="table_row">
    <label for="explanation">explanation(说明):</label>
    <input type="text" id="explanation" name="explanation" value="<?php if(!$result) echo set_value('explanation'); ?>"><br/>
    </div>


    <div class="table_row">
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    <input id="submit" type="submit" value="添加偏旁">
    </div>
    </from>

    <?php
    if($result)
        echo '<p>添加成功</p>';
    else
        echo validation_errors(); ?>
</body>
</html>