<div ng-controller="contentIndCtrl">
    <div style="position: absolute; top: 6px; right: 24px;">
        <button class="btn btn-default btn-sm" type="submit" ng-click="create()">Создать</button>
    </div>

    <style>
        .even{
            background-color: rgb(242, 240, 255);
        }
        .even:hover{
            background-color: rgb(236, 234, 249) !important;
        }
        .other i:first-child{margin-right: 2px;}
        .other i{cursor: pointer; opacity: .5; font-size: 120% !important;}
        .other i:hover{opacity: 1;}
    </style>

    <div class="row">
        <div class="col-xs-12">
            <table ng-init='content=<?=$content?>' class="table table-hover table-striped">
                <tr ng-repeat="item in content | filter:{title: filterTitle} | filter:{menuId: filterMenu.id}:true | filter:{itemId: filterItems.id}:true" ng-class-even="'even'">
                    <td style="width: 30px;"><input type="checkbox" style="margin: 0;" ng-model="item.status" ng-true-value="1" ng-false-value="0" ng-change="changeOnOff(item.id, item.status)"></td>
                    <td>{{item.title}}</td>
                    <td class="other" style="width: 80px;">
                        <i class="fa fa-eye" aria-hidden="true" ng-click="view(item.id)"></i>
                        <i class="fa fa-pencil-square-o" aria-hidden="true" ng-click="edit(item.id)"></i>
                        <i class="fa fa-trash-o" aria-hidden="true" ng-click="delete(item)"></i>
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <modal ng-show="modal">
        <p ng-if="status=='view'" ng-bind-html="sce.trustAsHtml(contentView)"></p>

        <div ng-if="status=='ins'||status=='edit'">
            <form class="form-horizontal" name="modalForm" novalidate>
                <div class="form-group">
                    <label for="namePage" class="col-xs-4 control-label">Название страницы</label>
                    <div class="col-xs-8">
                        <input class="form-control" name="namePage" id="namePage" placeholder="Ввести название..." ng-model="form.title" required>
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

                <textarea ui-tinymce="tinymceOptions" ng-model="form.text" required></textarea>

                <div style="position: absolute; bottom: 31px; right: 110px;">
                    <button type="button" class="btn btn-primary" ng-click="save()" ng-disabled="modalForm.$invalid">Сохранить</button>
                </div>
            </form>
        </div>

        <div ng-if="status=='del'">
            <div>Подтвердите удаление статьи - "<span style="color: blue;">{{nameDel}}</span>"</div>
            <div style="position: absolute; bottom: 31px; right: 110px;"><button type="button" class="btn btn-danger" ng-click="del()">Удалить</button></div>
        </div>
    </modal>
</div>