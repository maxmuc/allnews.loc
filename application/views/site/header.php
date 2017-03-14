<script type='text/javascript' src='/js/lib/marquee.js'></script>
<style type="text/css">
    /***********nav***************/
    .loginMenu{
        text-align: right;
        padding-right: 10px;
        background: #313131;
    }
    .loginMenu ul{
        margin: 0;
        padding: 5px 0;
    }
    .loginMenu li{
        display: inline;
        margin: 0 3px;
    }
    .loginMenu li a{
        color: #ccc;
    }
    /***********mainMenu*************/
    #mainMenu {
        background: rgba(0, 0, 0, 0) url("/img/menubar.png") repeat-x scroll 0 0;
        height: 57px;
        display:table;
        width:100%;
        border-collapse:collapse;
        margin: 0;
        padding: 0;
    }
    #mainMenu li{
        display:table-cell;
        text-align:center;
    }
    #mainMenu li a{
        display: inline-block;
        color: #d6e5f3;
        padding: 16px;
        vertical-align: middle;
        font-size: 110%;
        text-transform: uppercase;
        text-decoration: none;
    }
    #mainMenu li:hover, #mainMenu li.active, #mainMenu li:hover a, #mainMenu li.active a{    
        color: #fff;
    }
/***********mainMenu The End*********/
.marquee {
  width: 735px;
  overflow: hidden;
  /*border: 1px solid #ccc;
  background: #ccc;*/
  display: inline-block;
}
</style>

<script>	
	$(document).ready(function () {
		$('.marquee').marquee({
    		//speed in milliseconds of the marquee
    		duration: 10000
    	});
	});	
</script>

<table style="width: 100%;">
    <tr>
        <td>
            <a href="/" ng-click="selectedUrl('/')">
                <img src="/img/logo.png" style="margin: 16px 0;">
            </a>
        </td>
        <td style="vertical-align: middle; text-align: right;">
            <form class="form-inline">
                <div class="form-group">
                    <input class="form-control" placeholder="Поиск по сайту..." ng-model="arr.searchText" required>
                </div>
                <button class="btn btn-default myBtnSearch" ng-click="search(arr.searchText)">Найти</button>
            </form>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <div class="block" style="padding-bottom: 0px;">
                <div class="loginMenu">
                    <ul>
                        <?php if(!Ci::user()): ?>
                            <li><a href="/users/reg">Регистрация</a></li>
                            <li><a href="/users/login">Вход</a></li>
                        <?php else: ?>
                            <li>Здравствуйте, <?=explode('@', Ci::user()['email'])[0]?></li>
                            <li class="/users/logout"><a href="/users/logout">Выход</a></li>
                        <?php endif; ?>
                    </ul>
                </div>

                <ul id="mainMenu">
                    <li ng-repeat="item in arr.items | filter:{menuId:1}" ng-class="{'active':url == item.url}" ng-click="selectedUrl(item.url)">
                        <a ng-href="{{tmp.url}}" ng-if="item.url=='/'?tmp.url='/':tmp.url='/site/section/'+item.url">{{item.name}}</a>
                    </li>
                    <!--<?php foreach(Model::readAll('items', ['where' => ['menuId' => 1]]) as $row): ?>
                    <li>                        
                        <a href="<?=$row['url']?>"><?=$row['name']?></a>
                    </li>
                    <?php endforeach; ?>-->
                </ul>

                <div style="padding: 0 4px;">
                    <div class="marquee">                    
							<?php foreach(Model::readAll('content', ['where' => ['itemId' => 9], 'column' => ['title', 'url'], 'limit' => 5]) as $row): ?>                    	
                        	<a href="<?=$row['url']?>"><?=$row['title']?></a>
                    
                    	<?php endforeach; ?>                    	
                    </div>
                    	
                      
                    <div style="float: right;"><?=allNewsTime()?> <span ng-bind="theTime"></span></div>
                </div>
            </div>
        </td>
    </tr>    
</table>