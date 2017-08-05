<div id="form_container">
    <?= form_open_multipart('', array('id' => 'search_form','class'=>'form-horizontal')); ?>

    <div class="form-group">
        <label for="order" class="col-sm-2 control-label">order(序号):</label>
        <div class="col-sm-10">
            <input class="form-control" type="number" id="order" name="order"  value="<?=set_value('order')?>" required>
        </div>
    </div>

    <div class="form-group">
        <label for="model_1" class="col-sm-2 control-label">model(模式选择):</label>
        <div class="col-sm-10">
            <label class="radio-inline">
                <input type="radio" id="model_1" name="model" value="1" checked="checked">单独此序号
            </label>
            <label class="radio-inline">
                <input type="radio" id="model_2" name="model" value="2">此序号前后各10个
            </label>
            <label class="radio-inline">
                <input type="radio" id="model_3" name="model" value="3">此序号前后各30个
            </label>
            <label class="radio-inline">
                <input type="radio" id="model_4" name="model" value="4">此序号后20个
            </label>
            <label class="radio-inline">
                <input type="radio" id="model_5" name="model" value="5">此序号后50个
            </label>
        </div>
    </div>

    <div class="form-group">
        <p class="col-sm-2 control-label"><a class="btn btn-danger" href="<?php echo site_url('input_chose');?>">返回主页</a></p>
        <div class="col-sm-10">
            <input class="form-control btn btn-primary" id="submit" type="submit" value="搜索">
        </div>
    </div>
    <?= validation_errors(); ?>
    <?=form_close();?>
</div>


