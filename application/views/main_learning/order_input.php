<div id="form_container">
    <?php echo form_open_multipart($controller, array('id' => 'component_input_form','class'=>'form-horizontal')); ?>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="component_shape">component shape(字形):</label>
        <div class="col-sm-9">
            <input class="form-control" type="text" id="component_shape" name="component_shape" value="<?php
            if(!empty($component_shape))
                echo $component_shape;
            else if(!$result)
                echo set_value('shape'); ?>" required>
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
        <p class="col-sm-3 control-label"><a class="btn btn-danger" href="<?php echo site_url('input_chose');?>">返回主页</a></p>
        <div class="col-sm-9">
            <input class="form-control btn btn-primary" id="submit" type="submit" value="添加偏旁">
        </div>
    </div>
    </from>

    <p id="result_message"><?php  echo $result_msg;?></p>
    <?php echo validation_errors(); ?>
</div>