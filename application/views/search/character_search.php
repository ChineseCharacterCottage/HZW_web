<?php if(!empty($characters)): ?>
    <h2 style="text-align: center;margin-top: 50px">搜索结果如下：</h2>
    <table class="table table-hover">
        <thead>
        <tr>
            <td>字形</td>
            <td>拼音</td>
            <td>例词</td>
            <td>例句</td>
            <td>释义</td>
            <td>部首</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($characters as $character):?>
            <tr>
                <td><?= $character['character_shape']?></td>
                <td><?= $character['pinyin']?></td>
                <td><?= $character['words']?></td>
                <td><?= $character['sentence']?></td>
                <td><?= $character['explanation']?></td>
                <td><?= $character['radical_shape']?></td>
                <td><a target="_blank" href="<?= site_url('Character/input_and_update/'. $character['ID']) ?>">重新输入</a>/
                    <a href="#" onclick="delete_1(<?=$character['ID']?>)">删除</a></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
<?php else: ?>
    <h2 style="text-align: center;margin-top: 50px">该字不存在</h2>
<?php endif; ?>

<script>
    function delete_1(id){
        alert(id);
        $.get("<?= site_url('Character/delete/'); ?>"+id,
            function (data,status) {
                if(status=='success'&&data=='success')
                    alert('删除成功');
                else
                    alert("删除失败，可能是因为删除的对象在其他地方有用到")
            });
    }
</script>
