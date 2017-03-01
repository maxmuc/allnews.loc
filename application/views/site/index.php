<link rel="stylesheet" href="/css/siteindex.css">

<div class="row">
    <div class="col-xs-8" style="padding-right: 2px;">
        <div class="block">
            <?php if(isset($wslider)):
                echo $wslider;
            else: ?>
            <div>Данных нет</div>
            <?php endif;?>
        </div>
    </div>
    <div class="col-xs-4" style="padding-left: 2px;">
        <div class="block" style="max-height: 312px;">
            <div class="zag" style="margin-bottom: 2px;">Политика / <span>Politics</span></div>

            <div class="entre">
                <?php if(isset($politics)):
                foreach($politics as $row): ?>
                    <div class="title"><?=$row['title']?></div>
                    <div class="text"><?=$row['text']?></div>
                    <div style="text-align: right;">
                        <a style="margin-bottom: 5px;" class="btn btn-default btn-xs readMore" href="/site/view/<?=$row['psevdonim']?>" role="button">Подробнее...</a>
                    </div>
                <?php endforeach; else: ?>
                <div>Данных нет</div>
                <?php endif;?>
            </div>
            
        </div>
    </div>
</div>