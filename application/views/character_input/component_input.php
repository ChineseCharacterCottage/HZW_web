<div id="form_container">
    <?php //echo $error ?>
    <?php echo form_open_multipart($controller, array('id' => 'component_input_form','class'=>'form-horizontal')); ?>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="shape">shape(字形):</label>
        <div class="col-sm-9">
            <input class="form-control" type="text" id="shape" name="shape" value="<?php
            if(!empty($shape))
                echo $shape;
            else if(!$result)
                echo set_value('shape'); ?>">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="characters">characters(例字):</label>
        <div class="col-sm-9">
            <input class="form-control" type="text" id="characters" name="characters" value="<?php if(!$result) echo set_value('characters'); ?>">
        </div>
    </div>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="voice_or_shape">shape or voice?(形旁还是声旁？):</label>
        <div class="col-sm-9">
            <label class="radio-inline">
                <input type="radio" id="voice_or_shape" name="voice_or_shape" value="s" checked="checked">shape
            </label>
            <label class="radio-inline">
                <input type="radio" id="voice_or_shape" name="voice_or_shape" value="v">voice
            </label>
        </div>
    </div>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="explanation">explanation(说明):</label>
        <div class="col-sm-9">
            <input class="form-control" type="text" id="explanation" name="explanation" value="<?php if(!$result) echo set_value('explanation'); ?>">
        </div>
    </div>


    <div class="form-group">
        <p class="col-sm-3 control-label"><a class="btn btn-danger" href="<?php echo site_url('input_chose');?>">返回主页</a></p>
        <div class="col-sm-9">
            <input class="form-control btn btn-primary" id="submit" type="submit" value="添加偏旁">
        </div>
    </div>
    </from>

    <?php
    if($result)
        echo '<p>添加成功</p>';
    else
        echo validation_errors(); ?>
</div>