<div ng-controller="menuIndCtrl">

    <style>
        .menuItems{
            border: 1px solid #e0dfe3;
            border-radius: 3px;
            height: 270px;
            overflow: auto;
            background: #ffffff;
        }
        .menuItems ul{margin: 5px; padding: 0;}
        .menuItems li{list-style: none; border-bottom: 1px solid #e0dfe3;}
        .menuItems input{
            border: none;
            width: 100%;
            border-radius: 0;
            box-shadow: none;
        }
        .menuItems li:hover{
            border-bottom: 1px solid #c50306;
            box-shadow: none;
        }
        .menuItems input:focus{
            box-shadow: none;
            font-weight: bold;
        }
        .menuItems li.active{
            border-bottom: 1px solid #c50306;
            font-weight: bold;
        }
        .menuItems span{
            border: none;
            background: none;
            border-radius: 0;
            box-shadow: none;
        }

        /*.menuPage .block{
            background: url("/img/bg.jpg") transparent;
            padding: 0;
            position: relative;
        }
        /*table.lang td:first-child{
            width: 112px;
        }*/
        .list div{
            padding: 5px 12px 0px;
            cursor: move;
        }

        i:first-child{margin-right: 2px;}
        i{cursor: pointer; opacity: .5; font-size: 120% !important;}
        i:hover{opacity: 1;}

    </style>

    <div class="btn-group btn-group-sm" role="group" aria-label="Создать меню" style="float: right; margin-top: -50px;">
        <button type="button" class="btn btn-default" ng-click="create('menu')">Создать меню</button>
        <button type="button" class="btn btn-default" ng-click="create('items')" ng-disabled="!buttonCreateItem">Создать пункт</button>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div style="text-align: center;">Список меню</div>
            <div class="menuItems">
                <ul>
                    <li ng-repeat="item in arr.menu" ng-class="{'active':item.name === activeMenu}">
                        <div class="input-group">

                            <input class="form-control" aria-describedby="sizing-addon2" ng-model="item.name" ng-click="selMenu(item)" ng-blur="blur('menu', item)" ng-focus="focus(item.name)" ng-keyup="$event.keyCode == 13?blur('menu', item):false" />
						<span class="input-group-addon">
							<i class="fa fa-trash-o" aria-hidden="true" ng-click="delete('menu', item)"></i>
						</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="col-md-6">
            <div style="text-align: center;">Список пунктов</div>
            <div class="menuItems">
                <ul ui-sortable="sortableOptions" ng-model="list" class="list">
                    <!--<li ng-repeat="item in list | filter:{menuId:menuId}:true" class="item">-->
                    <li ng-repeat="item in list" class="item">

                        <div class="input-group">
                            {{item.name}}
						<span class="input-group-addon">
							<i class="fa fa-pencil-square-o" aria-hidden="true" ng-click="update(item)"></i>
							<i class="fa fa-trash-o" aria-hidden="true" ng-click="delete('items', item)"></i>
						</span>
                        </div><!-- /input-group -->
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <modal ng-show="modal">
        <div ng-if="status=='insupd'">
            <form class="form-horizontal" name="modalForm" novalidate>
                <div class="form-group">
                    <label for="menuName" class="col-xs-4 control-label">{{nameItem}}</label>
                    <div class="col-xs-8">
                        <input class="form-control" name="menuName" id="menuName" placeholder="Ввести название..." ng-model="form.name" required>
                    </div>
                </div>

                <div class="form-group" ng-if="nameItem!='Название меню'">
                    <div class="col-xs-offset-4 col-xs-8">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" ng-model="form.static" ng-true-value="1" ng-false-value="0"> Статический URL
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group" ng-if="table=='items' && form.static">
                    <label for="url" class="col-xs-4 control-label">URL</label>
                    <div class="col-xs-8">
                        <input class="form-control" name="url" id="url" placeholder="Ввести url..." ng-model="form.url">
                    </div>
                </div>

                <div style="position: absolute; bottom: 31px; right: 110px;">
                    <button type="button" class="btn btn-primary" ng-click="save()" ng-disabled="modalForm.$invalid">Сохранить</button>
                </div>
            </form>
        </div>

        <div ng-if="status=='del'">
            <div>Подтверждение удаления - "<span style="color: blue;">{{nameDel}}</span>"</div>
            <div style="position: absolute; bottom: 31px; right: 110px;"><button type="button" class="btn btn-danger" ng-click="del()">Удалить</button></div>
        </div>
    </modal>

</div>