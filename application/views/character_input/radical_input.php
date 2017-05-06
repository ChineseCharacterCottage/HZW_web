<html>
<head>
    <title>部首输入</title>
    <link rel="stylesheet" href="<?php echo base_url('css/input_form.css');?>">
</head>
<body>
    <?php //echo $error ?>
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('radical_input', array('id' => 'radical_input_form','class'=>'input_form')); ?>

    <div class="table_row">
    <label for="radical_shape">radical_shape(部首字形):</label>
    <input type="text" id="radical_shape" name="radical_shape" value="<?php if(!$result) echo set_value('radical_shape'); ?>">
    </div>

    <div class="table_row">
    <label for="radical_name">radical_name(部首名):</label>
    <input type="text" id="radical_name" name="radical_name" value="<?php if(!$result) echo set_value('radical_name'); ?>">
    </div>

    <div class="table_row">
    <label for="characters">character(例字):</label>
    <input type="text" id="characters" name="characters" value="<?php if(!$result) echo set_value('characters'); ?>">
    </div>

    <div class="table_row">
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    <input id="submit" type="submit" value="添加部首">
    </div>
    </form>
    <p id="result_message"><?php if($result) echo '录入成功';?></p>
</body>
</html>