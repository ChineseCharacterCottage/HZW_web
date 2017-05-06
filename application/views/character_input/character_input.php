<html>
<head>
    <title>汉字输入</title>
    <link rel="stylesheet" href="<?php echo base_url('css/input_form.css');?>">
</head>
<body>
    <?php //echo $error ?>
    <?php echo form_open_multipart('character_input', array('id' => 'char_input_form','class'=>'input_form')); ?>

    <div class="table_row">
        <label for="character_shape">character(字形):</label>
        <input type="text" id="character_shape" name="character_shape" value="<?php if(!$result) echo set_value('character_shape'); ?>">
    </div>

    <div class="table_row">
    <label for="image">image(图片文件):</label>
    <input type="file" id="image" name="image" accept=".jpg">
    </div>

    <div class="table_row">
    <label for="pinyin">pinyin(拼音):</label>
    <input type="text" id="pinyin" name="pinyin" value="<?php if(!$result) echo set_value('pinyin'); ?>">
    </div>

    <div class="table_row">
    <label for="pronunciation">pronunciation(读音文件):</label>
    <input type="file" id="pronunciation" name="pronunciation" accept=".mp3">
    </div>

    <div class="table_row">
    <label for="words">words(例词):</label>
    <input type="text" id="words" name="words" value="<?php if(!$result) echo set_value('words'); ?>">
    </div>

    <div class="table_row">
    <label for="words_num">words_num(例词数量):</label>
    <input type="number" id="words_num" name="words_num" value="<?php if(!$result) echo set_value('words_num');?>">
    <input type="button" value="确定" onclick="words_pronunciation_input()">
    </div>
    <!--这里用来插入例词读音上传部分-->
    <div id="words_pronunciations"></div>

    <div class="table_row">
    <label for="sentence">sentence(例句):</label>
    <input type="text" id="sentence" name="sentence" value="<?php if(!$result) echo set_value('sentence'); ?>">
    </div>

    <div class="table_row">
    <label for="sentence_pronunciation">sentence pronunciation(例句读音文件):</label>
    <input type="file" id="sentence_pronunciation" name="sentence_pronunciation" accept=".mp3">
    </div>

    <div class="table_row">
    <label for="explanation">explanation(解释):</label>
    <input type="text" id="explanation" name="explanation" value="<?php if(!$result) echo set_value('explanation'); ?>">
    </div>

    <div class="table_row">
    <label for="radical">radical(部首):</label>
    <input type="text" id="radical" name="radical" value="<?php if(!$result) echo set_value('radical'); ?>"><br/>
    </div>

    <div class="table_row">
    <p><a href="<?php echo site_url('input_chose');?>">返回主页</a></p>
    <input id="submit" type="submit" value="添加汉字">
    </div>
    </form>
    <p id="result_message"><?php  echo $result_msg;?></p>
    <?php echo validation_errors(); ?>

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
            input.type="file";
            input.accept=".mp3";
            input.id=name;
            input.name=name;
            var label=document.createElement("label");
            label.innerHTML="word"+i+"（例词"+i+"）";
            var row_div=document.createElement("div");
            row_div.className="table_row";
            row_div.appendChild(label);
            row_div.appendChild(input);
            words_pronunciations_div.appendChild(row_div);
        }
    }
</script>

</body>
</html>