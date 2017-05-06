<html>
<head>
    <title>象形字输入</title>
    <link rel="stylesheet" href="<?php echo base_url('css/input_form.css');?>">
</head>
<body>
    <?php echo form_open_multipart('pictogram_input', array('id' => 'pictogram_input_form','class'=>'input_form')); ?>

    <div class="table_row">
    <label for="character">shape(字形):</label>
    <input type="text" id="character" name="character" value="<?php if(!$result) echo set_value('character'); ?>"><br/>
    </div>

    <div class="table_row">
    <label for="video">video(视频):</label>
    <input type="file" id="video" name="video" accept=".3gp"><br/>
    </div>


    <div class="table_row">
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    <input id="submit" type="submit" value="上传">
    </div>
    </form>
    <p id="result_message"><?php  echo $result_msg;?></p>
    <?php echo validation_errors(); ?>
</body>
</html>
