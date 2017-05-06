<html>
<head>
    <title>部首输入</title>
    <link rel="stylesheet" href="<?php echo base_url('css/input_form.css');?>">
</head>
<body>
    <?php //echo $error ?>
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('radical_input', array('id' => 'radical_input_form','class'=>'input_form')); ?>

    <label for="radical_shape">radical_shape(部首字形):</label>
    <input type="text" id="radical_shape" name="radical_shape" value="<?php if(!$result) echo set_value('radical_shape'); ?>"><br/>

    <label for="radical_name">radical_name(部首名):</label>
    <input type="text" id="radical_name" name="radical_name" value="<?php if(!$result) echo set_value('radical_name'); ?>"><br/>

    <label for="characters">character(例字):</label>
    <input type="text" id="characters" name="characters" value="<?php if(!$result) echo set_value('characters'); ?>"><br/>

    <div class="table_row">
    <input id="submit" type="submit">
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    </div>
    </form>
    <p id="result_message"><?php if($result) echo '录入成功';?></p>
</body>
</html>