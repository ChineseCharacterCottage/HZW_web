<?php if(!empty($components)): ?>
    <h2 style="text-align: center;margin-top: 50px">搜索结果如下：</h2>
    <table class="table table-hover">
        <thead>
        <tr>
            <td>字形</td>
            <td>例词</td>
            <td>类型</td>
            <td>释义</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($components as $component):?>
            <tr>
                <td><?= $component['shape']?></td>
                <td><?= $component['characters']?></td>
                <td><?= $component['voice_or_shape']=='v'?'声旁':'形旁'?></td>
                <td><?= $component['explanation']?></td>
                <td><a target="_blank" href="<?= site_url('Component/update/'. $component['ID']) ?>">重新输入</a>/
                    <a href="#" onclick="delete_(<?=$component['ID']?>)">删除</a></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
<?php else: ?>
    <h2 style="text-align: center;margin-top: 50px">该字不存在</h2>
<?php endif; ?>


<script>
    function delete_(id) {
        $.get("<?= site_url('Component/delete/') ?>"+id,
            function (data,status) {
                if(status=='success'&&data=='success')
                    alert('删除成功');
                else
                    alert("删除失败，可能是因为删除的对象在其他地方有用到")
            })
    }
</script>
