<html>
<head>
    <title>汉字输入</title>
</head>
<body>
    <?php //echo $error ?>
    <?php echo validation_errors(); ?>
    <?php echo form_open_multipart('character_input', array('id' => 'char_input_form','class'=>'input_form')); ?>

    <label for="character">character(字形):</label>
    <input type="text" id="character" name="character" value="<?php if(!$result) echo set_value('character'); ?>"><br/>

    <label for="pinyin">pinyin(拼音):</label>
    <input type="text" id="pinyin" name="pinyin" value="<?php if(!$result) echo set_value('pinyin'); ?>"><br/>

    <label for="words">words(例词):</label>
    <input type="text" id="words" name="words" value="<?php if(!$result) echo set_value('words'); ?>"><br/>

    <label for="sentence">sentence(例句):</label>
    <input type="text" id="sentence" name="sentence" value="<?php if(!$result) echo set_value('sentence'); ?>"><br/>

    <label for="explanation">explanation(解释):</label>
    <input type="text" id="explanation" name="explanation" value="<?php if(!$result) echo set_value('explanation'); ?>"><br/>

    <label for="radical">radical(部首):</label>
    <input type="text" id="radical" name="radical" value="<?php if(!$result) echo set_value('radical'); ?>"><br/>

    <input type="submit"><br/>
    <p id="result_message"><?php if($result) echo '录入成功';?></p>
    <p><a href="<?php echo site_url('radical_input');?>">去录入部首</a></p>
    </form>

</body>
</html>