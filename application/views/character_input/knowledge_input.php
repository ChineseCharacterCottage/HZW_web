<html>
<head>
    <title>Knowledge输入</title>
</head>
<body>
    <?php echo form_open_multipart('knowledge_input', array('id' => 'knowledge_input_form','class'=>'input_form')); ?>

    <label for="video">video(视频):</label>
    <input type="file" id="video" name="video" accept=".3gp"><br/>

    <label for="title">title(标题):</label>
    <input type="text" id="title" name="title" value="<?php if(!$result) echo set_value('title'); ?>"><br/>

    <label for="ktext">text(内容):</label>
    <textarea id="ktext" name="ktext"><?php if(!$result) echo set_value('ktext'); ?></textarea><br/>

    <input type="submit" value="上传">
    </form>
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    <p id="result_message"><?php  echo $result_msg;?></p>
    <?php echo validation_errors(); ?>
</body>
</html>
