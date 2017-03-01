<div class="adminka">

    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <p class="navbar-text"><i class="fa fa-graduation-cap" style="font-size: 130%;"></i>Adminka:</p>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <!--<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>-->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Менеджер <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="<?=site_url('/menu/admin')?>">Менеджер меню</a></li>
                            <li><a href="<?=site_url('/content/index')?>">Менеджер контента</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="<?=site_url('/reviews/admin')?>">Менеджер отзывов</a></li>
                            <li><a href="<?=site_url('/proposals/admin')?>">Менеджер предложений</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="<?=site_url('/news/admin')?>">Менеджер новостей</a></li>
                            <!--<li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">One more separated link</a></li>-->
                        </ul>
                    </li>
                    <li><a href="<?=site_url('/users/admin')?>">Пользователи</a></li>
                    <li><a href="/users/logout">Выход</a></li>
                </ul>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <!--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="<?=site_url('/test')?>">Для теста</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>