<html>
<head>
    <title>象形字输入</title>
</head>
<body>
<?php //echo $error ?>
<?php echo validation_errors(); ?>
<?php echo form_open_multipart('character_input', array('id' => 'char_input_form','class'=>'input_form')); ?>

<label for="character_shape">character(字形):</label>
<input type="text" id="character_shape" name="character_shape" value="<?php if(!$result) echo set_value('character_shape'); ?>"><br/>

<label for="video">video(视频文件):</label>
<input type="file" id="video" name="video" accept=".3pg"><br/>

<input type="submit" value="添加象形字"><br/>
<p id="result_message"><?php  echo $result_msg;?></p>
<p><a href="<?php echo site_url('radical_input/index');?>">去录入部首</a></p>
</form>

</body>
</html>