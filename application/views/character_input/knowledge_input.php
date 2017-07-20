<html>
<head>
    <title>Knowledge输入</title>
    <link rel="stylesheet" href="<?= base_url("css/bootstrap.css"); ?>">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<?= base_url("js/jquery-3.1.1.min.js"); ?>"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?= base_url("js/bootstrap.min.js"); ?>"></script>
    <link rel="stylesheet" href="<?php echo base_url('css/input_form.css');?>">
</head>
<body>
<div id="form_container">
    <?php echo form_open_multipart('knowledge_input', array('id' => 'knowledge_input_form','class'=>'form-horizontal')); ?>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="video">video(视频):</label>
        <div class="col-sm-9">
            <input class="form-control" type="file" id="video" name="video" accept=".3gp">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="title">title(标题):</label>
        <div class="col-sm-9">
            <input class="form-control" type="text" id="title" name="title" value="<?php if(!$result) echo set_value('title'); ?>">
        </div>
    </div>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="ktext">text(内容):</label>
        <div class="col-sm-9">
            <textarea class="form-control" id="ktext" name="ktext"><?php if(!$result) echo set_value('ktext'); ?></textarea>
        </div>
    </div>

    <div class="form-group">
        <p class="col-sm-3 control-label"><a class="btn btn-danger" href="<?php echo site_url('input_chose');?>">返回主页</a></p>
        <div class="col-sm-9">
            <input class="form-control btn btn-primary" id="submit" type="submit" value="上传">
        </div>
    </div>
    </form>
    <p id="result_message"><?php  echo $result_msg;?></p>
    <?php echo validation_errors(); ?>
</div>
</body>
</html>
