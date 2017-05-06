<html>
<head>
    <title>汉字输入</title>
</head>
<body>
    <?php //echo $error ?>
    <?php echo form_open_multipart('character_input', array('id' => 'char_input_form','class'=>'input_form')); ?>

    <label for="character_shape">character(字形):</label>
    <input type="text" id="character_shape" name="character_shape" value="<?php if(!$result) echo set_value('character_shape'); ?>"><br/>

    <label for="image">image(图片文件):</label>
    <input type="file" id="image" name="image" accept=".jpg"><br/>

    <label for="pinyin">pinyin(拼音):</label>
    <input type="text" id="pinyin" name="pinyin" value="<?php if(!$result) echo set_value('pinyin'); ?>"><br/>

    <label for="pronunciation">pronunciation(读音文件):</label>
    <input type="file" id="pronunciation" name="pronunciation" accept=".mp3"><br/>

    <label for="words">words(例词):</label>
    <input type="text" id="words" name="words" value="<?php if(!$result) echo set_value('words'); ?>"><br/>

    <label for="words_num">words_num(例词数量):</label>
    <input type="number" id="words_num" name="words_num" value="<?php if(!$result) echo set_value('words_num');?>">
    <input type="button" value="确定" onclick="words_pronunciation_input()"><br/>

    <!--这里用来插入例词读音上传部分-->
    <div id="words_pronunciations"></div>

    <label for="sentence">sentence(例句):</label>
    <input type="text" id="sentence" name="sentence" value="<?php if(!$result) echo set_value('sentence'); ?>"><br/>

    <label for="sentence_pronunciation">sentence pronunciation(例句读音文件):</label>
    <input type="file" id="sentence_pronunciation" name="sentence_pronunciation" accept=".mp3"><br/>

    <label for="explanation">explanation(解释):</label>
    <input type="text" id="explanation" name="explanation" value="<?php if(!$result) echo set_value('explanation'); ?>"><br/>

    <label for="radical">radical(部首):</label>
    <input type="text" id="radical" name="radical" value="<?php if(!$result) echo set_value('radical'); ?>"><br/>

    <input type="submit" value="添加汉字"><br/>
    <p><a href="<?php echo site_url('radical_input/index');?>">去录入部首</a></p>
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
            label.for=name;
            label.innerHTML="word"+i+"（例词"+i+"）";
            words_pronunciations_div.appendChild(label);
            words_pronunciations_div.appendChild(input);
            words_pronunciations_div.appendChild(document.createElement("br"));
        }
    }
</script>

</body>
</html>