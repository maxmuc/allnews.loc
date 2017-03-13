<script>
    $(document).ready(function(){
        $('.dCon img').addClass('img-thumbnail').css('margin-right', '10px');
    });
</script>
<?php if($contents): ?>
    <?php foreach($contents as $row): ?>
        <div style="display: inline-block;">
            <table style="margin-bottom: 10px;">
                <tr>
                    <td style="width: 90%;"><h3 style="margin: 0; font-size: 130%;"><?=$row['title']?></h3></td>
                    <td style="vertical-align: middle;"><span class="badge"><?=date("d.m.Y", $row['dataU'])?></span></td>
                </tr>
            </table>

            <?php
            $text = strip_tags(trim($row['text']));
            if(mb_strlen($text, 'utf-8') > 300){
                $text = mb_substr($text, 0, 300, 'utf-8');
                $spacing = mb_strripos($text, ' ');
                $text = mb_substr($text, 0, $spacing, 'utf-8');
                $spacing = mb_substr($text, -10, 10, 'utf-8');
                $tt = mb_strpos($row['text'], $spacing, 0, 'utf-8');
                $text = mb_substr($row['text'], 0, $tt+10, 'utf-8').'...';
            }else
                $text = $row['text'];
            ?>
            <div class="dCon" style="text-align: justify;">
                <?=$text?>
                <div style="text-align: right;">
                    <a style="margin-bottom: 5px;" class="btn btn-default btn-xs readMore" href="/site/view/<?=$row['url']?>" role="button">Подробнее</a>
                </div>
            </div>
        </div>
        <hr>
<?php endforeach; ?>

<?php else: ?>
    <p>Данных нет</p>
<?php endif; ?>