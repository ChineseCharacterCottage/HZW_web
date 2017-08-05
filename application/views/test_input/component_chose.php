<div id="form_container">
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('test_input/component_chose', array('id' => 'hear_chose_form','class'=>'form-horizontal')); ?>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="component_shape">component shape(偏旁字形):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="component_shape" name="component_shape"
                    value="<?php if(!$result) echo set_value('component_shape'); ?>" required>
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
        <label class="col-sm-3 control-label" for="choice_a">A(选项A对应字):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="choice_a" name="choice_a" value="<?php if(!$result) echo set_value('choice_a'); ?>" required>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="choice_b">B(选项B对应字):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="choice_b" name="choice_b" value="<?php if(!$result) echo set_value('choice_b'); ?>" required>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="choice_c">C(选项C对应字):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="choice_c" name="choice_c" value="<?php if(!$result) echo set_value('choice_c'); ?>" required>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="choice_d">D(选项D对应字):</label>
        <div class="col-sm-9">
            <input  class="form-control" type="text" id="choice_d" name="choice_d" value="<?php if(!$result) echo set_value('choice_d'); ?>" required>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="correct_choice_a">correct choice(正确选项):</label>
        <div class="col-sm-9">
            <label class="radio-inline">
                <input type="radio" id="correct_choice_a" name="correct_choice" value="a" checked="checked">a
            </label>
            <label class="radio-inline">
                <input type="radio" id="correct_choice_b" name="correct_choice" value="b">b
            </label>
            <label class="radio-inline">
                <input type="radio" id="correct_choice_c" name="correct_choice" value="c">c
            </label>
            <label class="radio-inline">
                <input type="radio" id="correct_choice_d" name="correct_choice" value="d">d
            </label>
        </div>
    </div>

    <div class="form-group">
        <p class="col-sm-3 control-label"><a class="btn btn-danger" href="<?php echo site_url('input_chose');?>">返回主页</a></p>
        <div class="col-sm-9">
            <input class="form-control btn btn-primary" id="submit" type="submit" value="确定">
        </div>
    </div>
    </form>
    <p id="result_message"><?php  echo $result_msg;?></p>
</div>