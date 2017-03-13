<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="/js/lib/wowslider/engine1/style.css" />
<script type="text/javascript" src="/js/lib/wowslider/engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->

<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1" style="margin-top: 0; margin-bottom: 0;">
    <div class="ws_images">
        <ul>
            <?php $n = 0; foreach($slider as $row): ?>
                <li><a href="/site/view/<?=$row['url']?>"><img src="img/slider/<?=$row['imgSlider']?>" alt="<?=$row['title']?>" title="<?=htmlspecialchars($row['title'])?>" id="wows1_<?=$n?>"/></a></li>
            <?php $n++; endforeach; ?>
        </ul>
    </div>
    <!--<div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">wowslider.com</a> by WOWSlider.com v8.7</div>-->
    <div class="ws_shadow"></div>
</div>
<script type="text/javascript" src="/js/lib/wowslider/engine1/wowslider.js"></script>
<script type="text/javascript" src="/js/lib/wowslider/engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->