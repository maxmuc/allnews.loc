<style>
    .even{
        background-color: rgb(242, 240, 255);
    }
    .even:hover{
        background-color: rgb(236, 234, 249) !important;
    }
    i{
        opacity: .5;
        cursor: pointer;
        margin: 0 2px;
        font-size: 120% !important;
    }
    i:hover{opacity: 1}
    .other{width: 88px;}
    .panel-heading button{

    }
    .sokr{
        max-height: 380px;
        overflow-y: scroll;
    }
</style>

<div class="panel panel-default" style=" border-radius: 0; background: #ddd url(/img/bg.jpg) repeat top left; position: relative;">
    <div class="panel-heading" style="background: rgb(50, 55, 56) none repeat scroll 0 0; color: #ffffff; margin: 10px 10px 0 10px; border-radius: 0;">
        <h1 class="panel-title" ng-init="arr.title='<?=$this->title?>'; arr.sidebar.st=false" ng-bind="arr.title"></h1>
        <div style="position: absolute; top: 14px; right: 476px;">
            <select class="form-control input-sm" style="width: 156px;" ng-model="filterMenu" ng-options="item.name for item in arr.menu track by item.id" ng-change="selFilterMenu(filterMenu)">
                <option value="">Фильтр по меню...</option>
            </select>
        </div>

        <div style="position: absolute; top: 14px; right: 308px;">
            <select class="form-control input-sm" style="width: 156px;" ng-model="filterItems" ng-options="item.name for item in arr.items | filter:{menuId: menuId}:true track by item.id">
                <option value="">Фильтр по пункту...</option>
            </select>
        </div>

        <div style="position: absolute; top: 14px; right: 106px;">
            <input type="text" class="form-control input-sm" style="width: 190px;" placeholder="Фильтр по названию..." ng-model="filterTitle">
        </div>

        <div style="position: absolute; top: 14px; right: 24px;">
            <button class="btn btn-primary btn-sm" type="submit" ng-click="editOrCreate()">Создать</button>
        </div>
    </div>
    <div class="panel-body" style="text-align: justify; font-size: 110%;">

        <div  class="sokr">
            <table ng-init='content=<?=$content?>' class="table table-hover table-striped">
                <tr ng-repeat="item in content | filter:{title: filterTitle} | filter:{menuId: filterMenu.id}:true | filter:{itemId: filterItems.id}:true" ng-class-even="'even'">
                    <td><input type="checkbox" style="margin: 0;" ng-model="item.status" ng-true-value="1" ng-false-value="0" ng-change="changeOnOff(item.id, item.status)"></td>
                    <td>{{item.name}}</td>
                    <td class="other">
                        <i class="fa fa-eye" aria-hidden="true" ng-click="butView(item.id)"></i>
                        <i class="fa fa-pencil-square-o" aria-hidden="true" ng-click="editOrCreate(item.id)"></i>
                        <i class="fa fa-trash-o" aria-hidden="true" ng-click="delete(item)"></i>
                    </td>
                </tr>
            </table>
        </div>

    </div>
</div>

<modal ng-show="modalMenu">
    <div ng-if="modalArr.status=='insupd'">

        <form class="form-horizontal" name="modalForm" novalidate>
            <div class="form-group">
                <label for="titleArticle" class="col-xs-3 control-label">Название статьи</label>
                <div class="col-xs-9">
                    <input type="text" class="form-control" id="titleArticle" name="titleArticle"  placeholder="Название статьи" ng-model="modalArr.form.name" required>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <select class="form-control" name="menuArticle" id="menuArticle" ng-model="modalArr.menuObj" ng-options="item.name for item in arr.menu track by item.id" ng-change="modalChangeMenu(modalArr.menuObj)">
                        <option value="">Выбрать меню...</option>
                    </select>
                </div>

                <div class="col-md-6">
                    <select class="form-control" name="itemArticle" id="itemArticle" ng-model="modalArr.itemsObj" ng-options="item.name for item in arr.items | filter:{menuId: modalMenuId}:true track by item.id">
                        <option value="">Выбрать пункт...</option>
                    </select>
                </div>
            </div><br />

            <textarea ui-tinymce="tinymceOptions" ng-model="modalArr.form.text" required></textarea>

            <div style="position: absolute; bottom: 10px; right: 110px;">
                <button class="btn btn-default" type="submit" ng-click="saveEdit(currentItem)" ng-if="modalArr.status=='insEdit'" ng-disabled="!modalForm.$dirty || modalForm.$invalid">Сохранить</button>
            </div>

        </form>
        <div style="position: absolute; bottom: 31px; right: 110px;"><button type="button" class="btn btn-primary" ng-click="save()" ng-disabled="!modalForm.$dirty || modalForm.$invalid">Сохранить</button></div>
    </div>
</modal>
