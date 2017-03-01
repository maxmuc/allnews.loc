<?php if($contents): ?>
<ul>
    <?php foreach($contents as $row): ?>
        <li><?=$row['title']?></li>
    <?php endforeach; ?>
</ul>
<?php else: ?>
    <p>Данных нет</p>
<?php endif; ?>