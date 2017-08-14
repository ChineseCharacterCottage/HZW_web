<div id="form_container">
    <?php //echo $error ?>
    <?php echo form_open_multipart('character/input_and_update/'.$update_id, array('id' => 'char_input_form','class'=>'form-horizontal')); ?>

    <div class="form-group">
        <label for="character_shape" class="col-sm-3 control-label">character(字形):</label>
        <div class="col-sm-9">
            <input type="text" id="character_shape" class="form-control" name="character_shape" value="<?php
            if(!empty($shape))
                echo $shape;
            else if(!$result)
                echo set_value('character_shape');
            ?>">
        </div>
    </div>

    <div class="form-group">
        <label for="image" class="col-sm-3 control-label">image(图片文件):</label>
        <div class="col-sm-9">
            <input type="file" id="image" class="form-control" name="image" accept=".jpg">
        </div>
    </div>

    <div class="form-group">
        <label for="pinyin" class="col-sm-3 control-label">pinyin(拼音):</label>
        <div class="col-sm-9">
            <input type="text" id="pinyin" class="form-control" name="pinyin" value="<?php if(!$result) echo set_value('pinyin'); ?>">
        </div>
    </div>

    <div class="form-group">
    <label for="pronunciation" class="col-sm-3 control-label">pronunciation(读音文件):</label>
        <div class="col-sm-9">
            <input type="file" id="pronunciation" class="form-control" name="pronunciation" accept=".mp3">
        </div>
    </div>

    <div class="form-group">
    <label for="words" class="col-sm-3 control-label">words(例词):</label>
        <div class="col-sm-9">
            <input type="text" id="words" class="form-control" name="words" value="<?php if(!$result) echo set_value('words'); ?>">
        </div>
    </div>

    <div class="form-group">
    <label for="words_num" class="col-sm-3 control-label">words_num(例词数量):</label>
            <div class="col-sm-7">
            <input type="number" id="words_num" class="form-control" name="words_num" value="<?php if(!$result) echo set_value('words_num');?>">
        </div>
        <div class="col-sm-2">
            <input type="button" class="form-control btn btn-info" value="确定" onclick="words_pronunciation_input()">
        </div>
    </div>
    <!--这里用来插入例词读音上传部分-->
    <div id="words_pronunciations"></div>

    <div class="form-group">
    <label for="sentence" class="col-sm-3 control-label">sentence(例句):</label>
        <div class="col-sm-9">
            <input type="text" id="sentence" class="form-control" name="sentence" value="<?php if(!$result) echo set_value('sentence'); ?>">
        </div>
    </div>

    <div class="form-group">
    <label for="sentence_pronunciation" class="col-sm-3 control-label">sentence pronunciation(例句读音文件):</label>
        <div class="col-sm-9">
            <input type="file" id="sentence_pronunciation" class="form-control" name="sentence_pronunciation" accept=".mp3">
        </div>
    </div>

    <div class="form-group">
    <label for="explanation" class="col-sm-3 control-label">explanation(解释):</label>
        <div class="col-sm-9">
            <input type="text" id="explanation" class="form-control" name="explanation" value="<?php if(!$result) echo set_value('explanation'); ?>">
        </div>
    </div>

    <div class="form-group">
    <label for="radical" class="col-sm-3 control-label">radical(部首):</label>
        <div class="col-sm-9">
            <input type="text" id="radical" class="form-control" name="radical" value="<?php if(!$result) echo set_value('radical'); ?>"><br/>
        </div>
    </div>

    <div class="form-group">
        <p class="col-sm-3 control-label"><a class="btn btn-danger" href="<?php echo site_url('input_chose');?>">返回主页</a></p>
        <div class="col-sm-9">
            <input class="form-control btn btn-primary" id="submit" type="submit" value="添加汉字">
        </div>
    </div>
    </form>
    <p id="result_message"><?php  echo $result_msg;?></p>
    <?php echo validation_errors(); ?>
</div>

<script>
    window.onload=words_pronunciation_input();
    function words_pronunciation_input() {
        var words_num=document.getElementById("words_num").value;
        if(words_num=="")
            words_num=0;
        var words_pronunciations_div=document.getElementById("words_pronunciations");
        words_pronunciations_div.innerHTML="";
        for(var i=0;i<words_num;i++){
            var name="words_pronunciation"+i;
            var input=document.createElement("input");
            var form_group=document.createElement("div");
            input.type="file";
            input.accept=".mp3";
            input.id=name;
            input.name=name;
            input.className="form-control";
            var label=document.createElement("label");
            label.innerHTML="word"+i+"（例词"+i+"）";
            label.className="col-sm-3 control-label";
            var row_div=document.createElement("div");
            row_div.className="form-group";
            var input_div=document.createElement("div");
            input_div.className="col-sm-9";
            row_div.appendChild(label);
            input_div.appendChild(input);
            row_div.appendChild(input_div);
            words_pronunciations_div.appendChild(row_div);
        }
    }
</script>
