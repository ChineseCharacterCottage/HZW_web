<html>
<head>
    <title>象形字输入</title>
</head>
<body>
    <?php echo form_open_multipart('pictogram_input', array('id' => 'pictogram_input_form','class'=>'input_form')); ?>

    <label for="character">shape(字形):</label>
    <input type="text" id="character" name="character" value="<?php if(!$result) echo set_value('character'); ?>"><br/>

    <label for="video">video(视频):</label>
    <input type="file" id="video" name="video" accept=".3gp"><br/>

    <input type="submit" value="上传">
    </form>
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    <p id="result_message"><?php  echo $result_msg;?></p>
    <?php echo validation_errors(); ?>
</body>
</html>
