<style>
    .status{width: 38px; text-align: center;}
    .title{width: 258px;}
    .newsHead .title{text-align: center;}
    .settings{width: 86px;}
    .settings ul{
        list-style: none;
        margin: 0;
        padding: 0;
    }
    .settings li{
        display: inline;
        margin: 0 3px;
    }
    .settings li i{
        cursor: pointer;
        opacity: 0.5;
        font-size: 120%;
    }
    .settings li i:hover{
        opacity: 1;
    }
    .table-striped > tbody > tr:nth-child(2n) > td{
        background-color: #eff9f9;
    }
</style>

<div ng-controller="adminCtrl" ng-cloak>

    <div style="position: absolute; margin-top: -50px; right: 26px;">
        <table >
            <tr>
                <td style="padding-right: 20px;">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" id="sizing-addon3">
                            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                        </span>
                        <input type="text" class="form-control" ng-model="search" placeholder="Search" aria-describedby="sizing-addon3" />
                    </div>
                </td>
                <td>
                    <div class="btn-group" role="group" aria-label="...">                        
                        <button type="button" class="btn btn-default btn-sm" ng-click="create()" data-toggle="modal" data-target="#modal">Создать</button>
                    </div>
                </td>
            </tr>
        </table>
    </div>

    <table class="table newsHead" style="margin-bottom: 0px;">
        <thead>
        <tr>
            <td class="status">Вкл</td>
            <td class="title">Название</td>
            <td class="menu">Меню</td>
            <td class="items">Пункты</td>
            <td class="rud">&nbsp;</td>
        </tr>
        </thead>
    </table>
    <div style="height: 348px; overflow-y: scroll;">{{test}}
        <table class="table table-striped table-hover newsBody">
            <tbody>
            <tr ng-repeat="content in contents | filter:search">
                <td class="status">
                    <input type="checkbox" ng-model="content.status" ng-true-value="1" ng-false-value="0" ng-change="changeStatus(content.id, content.status)">
                </td>
                <td class="title">{{content.title}}</td>
                <td class="menu">{{content.menuId|menuFilter:menu}}</td>
                <td class="items">{{content.itemId|itemFilter:itemsMain}}</td>
                <td class="settings">
                    <ul>
                        <li><i class="fa fa-eye" aria-hidden="true" ng-click="view(content.id, content.title)"></i></li>
                        <li><i class="fa fa-pencil-square-o" aria-hidden="true" ng-click="selEdit(content.id, content.title)"></i></li>
                        <li>
                            <i class="fa fa-trash-o" aria-hidden="true" ng-click="selDel(content.id, content.title)"></i>
                        </li>
                    </ul>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <contentcrud></contentcrud>
</div>