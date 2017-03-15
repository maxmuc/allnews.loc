<div class="panel-body">

    <form class="form-inline" action="/site/search">
        <div class="form-group">
            <div class="input-group">
                <input type="text" class="form-control" name="search" placeholder="Поиск по сайту..." style="width: 560px; margin-right: 5px;" name="search">
            </div>
        </div>
        <button class="btn btn-default">Найти</button>
    </form>

    <br />

    <?php
    if(!empty($model)){
        if(is_array($model)){
            echo '<p>Результат поиска (слова найдены в таких статьях):</p>';
            foreach($model as $row){
                echo '<ul><li><a href="/site/view/'.$row['url'].'">'.$row['title'].'</a></li></ul>';
            }
        }else
            echo $model;
    }?>
</div>