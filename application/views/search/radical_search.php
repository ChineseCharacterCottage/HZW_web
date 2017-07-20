<?php if(!empty($radicals)): ?>
    <h2 style="text-align: center;margin-top: 50px">搜索结果如下：</h2>
    <table class="table table-hover">
        <thead>
        <tr>
            <td>字形</td>
            <td>例词</td>
            <td>部首名</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($radicals as $radical):?>
            <tr>
                <td><?= $radical['radical_shape']?></td>
                <td><?= $radical['characters']?></td>
                <td><?= $radical['radical_name']?></td>
                <td><a href="<?= site_url('Radical/update/'. $radical['ID']) ?>">重新输入</a>/
                    <a href="#" onclick="delete_(<?=$radical['ID']?>)">删除</a></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
<?php else: ?>
    <h2 style="text-align: center;margin-top: 50px">该字不存在</h2>
<?php endif; ?>


<script>
    function delete_(id) {
        $.get("<?= site_url('Radical/delete/') ?>"+id,
            function (data,status) {
                if(status=='success'&&data=='success')
                    alert('删除成功');
                else
                    alert("删除失败，可能是因为删除的对象在其他地方有用到")
            })
    }
</script>
