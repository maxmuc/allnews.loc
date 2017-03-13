<link rel="stylesheet" href="/css/siteindex.css">

<div class="row">
    <div class="col-xs-8" style="padding-right: 2px;">
        <div class="block">
            <?php if(isset($slider)):
                echo $slider;
            else: ?>
            <div>Данных нет</div>
            <?php endif;?>
        </div>
    </div>
    <div class="col-xs-4" style="padding-left: 2px;">
        <div class="block" style="max-height: 312px;">
            <div class="zag" style="margin-bottom: 2px;">Мир / <span>Peace</span></div>

            <div class="entre">
                <?php if(isset($peace)):
                foreach($peace as $row): ?>
                    <div class="title"><?=mb_substr($row['title'], 0, 58, 'UTF-8')?></div>
                    <div class="text"><?=mb_substr(strip_tags($row['text']), 0, 100, 'UTF-8')?></div>
                    <div style="text-align: right;">
                        <a style="margin-bottom: 5px;" class="btn btn-default btn-xs readMore" href="/site/view/<?=$row['url']?>" role="button">Подробнее...</a>
                    </div>
                <?php endforeach; else: ?>
                <div>Данных нет</div>
                <?php endif;?>
            </div>
            
        </div>
    </div>
</div>

<script type="text/javascript" src="js/lib/jssor.slider.mini.js"></script>
<script>
    jQuery(document).ready(function ($) {

        var jssor_1_options = {
            $AutoPlay: true,
            $AutoPlaySteps: 1,
            $SlideDuration: 2000,
            $SlideWidth: 300,
            $SlideSpacing: 3,
            $Cols: 3,
            $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$,
                $Steps: 1
            },
            $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $SpacingX: 1,
                $SpacingY: 1
            }
        };

        var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

        //responsive code begin
        //you can remove responsive code if you don't want the slider scales while window resizing
        function ScaleSlider() {
            var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
            if (refSize) {
                refSize = Math.min(refSize, 902);
                jssor_1_slider.$ScaleWidth(refSize);
            }
            else {
                window.setTimeout(ScaleSlider, 30);
            }
        }
        ScaleSlider();
        $(window).bind("load", ScaleSlider);
        $(window).bind("resize", ScaleSlider);
        $(window).bind("orientationchange", ScaleSlider);
        //responsive code end
    });

</script>

<div class="row firstRow">
    <div class="col-xs-12">
        <div class="block" style="padding: 0;">
            <table class="block3">
                <tr>
                    <td style="width: 46px; padding: 0 10px; vertical-align: middle;">
                        <div class="prev"></div>
                    </td>
                    <td>
                        <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 902px; height: 90px; overflow: hidden; visibility: hidden;">
                            <!-- Loading Screen -->
                            <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 902px; height: 90px; overflow: hidden;" class="">
                                <?php foreach($curious as $row): ?>
                                    <div style="border-right: 1px solid #ddd; padding-right: 10px;">
                                        <table style="height: 90px;">
                                            <tr>
                                                <td style="padding-right: 10px;"><img src="img/content/thumb/<?=$row['img']?>" alt="" class="img-thumbnail" style="margin-left: 5px;"></td>
                                                <td style="font-size: 90%; vertical-align: middle;">
                                                    <div><?=rus_date("M d, Y", time($row['dataC']))?></div>
                                                    <div style="text-transform: uppercase;">
                                                        <a href="<?=$row['url']?>">
                                                            <?php $title = mb_substr($row['title'], 0, 42, 'UTF-8');
                                                            $strLength = iconv_strlen($row['title'], 'UTF-8');
                                                            if($strLength < 42)
                                                                echo $title;
                                                            else
                                                                echo substr($title, 0, strrpos($title,' ')).'...';

                                                            ?>
                                                        </a>
                                                    </div>
                                                    <div>Рубрика Курьёзы</div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>

                        <!--<div class="row cur">



                            <?php foreach($curious as $row): ?>
                                <div class="col-xs-4">
                                    <table style="height: 90px;">
                                        <tr>
                                            <td style="padding-right: 10px;"><img src="img/content/thumb/<?=$row['img']?>" alt="" class="img-thumbnail"></td>
                                            <td style="font-size: 90%; vertical-align: middle;">
                                                <div><?=rus_date("M d, Y", time($row['dataC']))?></div>
                                                <div style="text-transform: uppercase;">
                                                    <a href="<?=$row['url']?>">
                                                        <?php $title = mb_substr($row['title'], 0, 48, 'UTF-8');
                            $strLength = iconv_strlen($row['title'], 'UTF-8');
                            if($strLength < 46)
                                echo $title;
                            else
                                echo substr($title, 0, strrpos($title,' ')).'...';

                            ?>
                                                    </a>
                                                </div>
                                                <div>Рубрика Курьёзы</div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            <?php endforeach; ?>
                        </div>-->
                    </td>
                    <td style="width: 46px; padding: 0 10px; vertical-align: middle;">
                        <div class="next"></div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>