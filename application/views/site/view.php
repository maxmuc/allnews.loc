<script>
    $(document).ready(function(){
        $('.dCon img').addClass('img-thumbnail').css('margin-right', '10px');
    });
</script>
<?php if($content): ?>
    <div style="display: inline-block;">
        <div class="dCon" style="text-align: justify;">
            <?=$content['text']?>
            <div style="text-align: right;">
                <a style="margin-bottom: 5px;" class="btn btn-default btn-xs readMore" onclick="history.back(); return false;" role="button">Вернуться назад</a>
            </div>
        </div>
    </div>
<?php else: ?>
    <p>Данных нет</p>
<?php endif; ?>