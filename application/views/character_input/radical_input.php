<div id="form_container">
    <?php //echo $error ?>
    <?php echo form_open_multipart($controller, array('id' => 'radical_input_form','class'=>'form-horizontal')); ?>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="radical_shape">radical_shape(部首字形):</label>
        <div class="col-sm-9">
            <input class="form-control" type="text" id="radical_shape" name="radical_shape" value="<?php
            if(!empty($shape))
                echo $shape;
            else if(!$result)
                echo set_value('radical_shape'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="radical_name">radical_name(部首名):</label>
        <div class="col-sm-9">
            <input class="form-control" type="text" id="radical_name" name="radical_name" value="<?php if(!$result) echo set_value('radical_name'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="characters">character(例字):</label>
        <div class="col-sm-9">
            <input class="form-control" type="text" id="characters" name="characters" value="<?php if(!$result) echo set_value('characters'); ?>">
        </div>
    </div>

    <div class="form-group">
        <p class="col-sm-3 control-label"><a class="btn btn-danger" href="<?php echo site_url('input_chose');?>">返回主页</a></p>
        <div class="col-sm-9">
            <input class="form-control btn btn-primary" id="submit" type="submit" value="添加部首">
        </div>
    </div>
    </form>
    <p id="result_message"><?php if($result) echo '录入成功';?></p>
    <?php echo validation_errors(); ?>
</div>