<?php if(!empty($components)): ?>
    <h2 style="text-align: center;margin-top: 50px">搜索结果如下：</h2>
    <table class="table table-hover">
        <thead>
        <tr>
            <td>序号</td>
            <td>偏旁字形</td>
            <td>偏旁类型</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($components as $component):?>
            <tr>
                <td><?= $component['c_order']?></td>
                <td><?= $component['shape']?></td>
                <td><?= $component['voice_or_shape']=='v'?'声旁':'形旁'?></td>
                <td><a target="_blank" href="<?= site_url('Main_learning/update/'. $component['c_order']) ?>">重新输入</a>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
<?php else: ?>
    <h2 style="text-align: center;margin-top: 50px">该序号不存在</h2>
<?php endif; ?>