app.controller('appCtrl', ['$scope', '$interval', '$http', '$sce', function($scope, $interval, $http, $sce){
    $scope.http = $http;
    $scope.sce = $sce;
    /******************clock**********************/
    $scope.theTime = new Date().toLocaleTimeString();
    $interval(function () {
        $scope.theTime = new Date().toLocaleTimeString();
    }, 1000);
    /*********************************************/
}]);

app.controller('menuIndCtrl', ['$scope', function($scope){
    $scope.menuId = false;
    $scope.form = {};
    $scope.id = false;

    //var tmpList = $scope.arr.items;
    var tmpList = [];

    /*for (var i = 1; i <= 6; i++){
     tmpList.push({
     name: 'Item ' + i,
     value: i
     });
     }*/

    $scope.list = [];

    $scope.sortingLog = [];

    $scope.sortableOptions = {
        stop: function(e, ui) {
            //log(e);
            var logEntry = $scope.list.map(function(i){
                return i.id;
            }).join(',');

            $scope.http.post('/menu/sort', {sort: logEntry})
                .then(function(response){
                    //log(response.data);
                    $scope.arr.items = response.data.items;
                });

            //$scope.sortingLog.push('Update: ' + logEntry);
            //log(logEntry);
            //},
            /*stop: function(e, ui) {
             log('s');
             // this callback has the changed model
             var logEntry = tmpList.map(function(i){
             return i.value;
             }).join(', ');
             $scope.sortingLog.push('Stop: ' + logEntry);*/
        }
    };




    $scope.update = function(item){
        log(item);
        $scope.modalTitle = 'Редактирование пункта';
        $scope.nameItem = 'Название пункта';
        $scope.status = 'insupd';
        $scope.table = 'items';
        $scope.form = {name: item.name, static: item.static, url: item.url};
        $scope.id = item.id;
        $scope.modal = true;
    };

    $scope.focus = function(name){
        //log(items.name)
        $scope.itemsName = name;
    };

    $scope.blur = function(table, item){
        //log($scope.itemsName, item.name);
        if($scope.itemsName != item.name){
            //log($scope.itemsName, item.name);
            var data = {status: 'insupd', table: table, id: item.id, form: {name: item.name}};
            //log(data);
            $scope.http.post('/menu/http', data)
                .then(function () {
                    $scope.itemsName = item.name;
                    $scope.activeMenu = item.name;
                });
            //log(item, data);
        }
    };

    $scope.save = function(){
        //log($scope.menuId);
        if($scope.table == 'items')
            $scope.form.menuId = $scope.menuId;

        var data = {table: $scope.table, status: $scope.status, form: $scope.form};

        if($scope.id)
            data.id = $scope.id;

        $scope.http.post('/menu/http', data)
            .then(function(response){
                if($scope.table == 'items'){
                    if($scope.id){
                        for(var i = 0; i < $scope.arr.items.length; i++){
                            if($scope.arr.items[i].id == $scope.id){
                                //arr.id = $scope.id;
                                $scope.arr.items[i].name = $scope.form.name;
                                $scope.arr.items[i].url = $scope.form.url;
                                $scope.arr.items[i].static = $scope.form.static;
                                //$scope.form = {name: item.name, url: item.url};
                                break;
                            }
                        }
                    }else{
                        $scope.form.id = parseInt(response.data);
                        log($scope.form);
                        $scope.arr.items.push($scope.form);
                        $scope.list = _.sortBy(_.filter($scope.arr.items, {menuId: $scope.form.menuId}), ['sort']);
                        log($scope.arr.items);
                    }
                }else{
                    $scope.form.id = parseInt(response.data);
                    //log($scope.form);
                    $scope.arr.menu.push($scope.form);
                }
                $scope.closeModal();
            });
    }

    $scope.create = function(table){
        //log(table);
        if(table == 'menu'){
            $scope.modalTitle = 'Создание меню';
            $scope.nameItem = 'Название меню';
        }else{
            $scope.modalTitle = 'Создание пункта';
            $scope.nameItem = 'Название пункта';
        }
        $scope.table = table;
        $scope.form = {};
        $scope.status = 'insupd';
        $scope.modal = true;
    };

    $scope.selMenu = function(item){
        //log($scope.arr.items);
        $scope.menuId = item.id;
        $scope.buttonCreateItem = true;
        $scope.activeMenu = item.name;
        $scope.list = _.sortBy(_.filter($scope.arr.items, {menuId: item.id}), ['sort']);
    };

    $scope.closeModal = function () {
        //$scope.menuId = false;
        $scope.id = false;
        $scope.modal = false;
    };

    $scope.delete = function(table, item){
        if(table == 'menu') {
            $scope.modalTitle = 'Удаление меню';
            var items = _.find($scope.arr.items, ['menuId', item.id]);
            //log(items);
            if (items !== undefined) {
                $scope.notifier.emit({
                    timeout: 5000,
                    type: 'error',
                    title: 'Error',
                    content: 'Нужно удалить все пункты этого меню!'
                });
            }else
                $scope.modal = true;
        }else{
            $scope.modalTitle = 'Удаление пункта';
            $scope.modal = true;
            $scope.menuId = item.menuId;
        }
        $scope.nameDel = item.name;
        $scope.table = table;
        $scope.id = item.id;
        $scope.status = 'del';
    };

    $scope.del = function(){
        var data = {id: $scope.id, status: 'del', table: $scope.table};
        $scope.http.post('/menu/http', data);

        if($scope.table == 'menu')
            _.remove($scope.arr.menu, {id: data.id});
        else{
            _.remove($scope.arr.items, {id: data.id});
            $scope.list = _.sortBy(_.filter($scope.arr.items, {menuId: $scope.menuId}), ['sort']);
        }

        $scope.closeModal();
    };
}]);

app.controller('contentIndCtrl', ['$scope', function($scope){
    $scope.form = {};
    $scope.modalMenuId = false;
    $scope.modalArr = {};

    $scope.tinymceOptions = {
        height: 200,
        plugins: 'link textcolor colorpicker image code table media nonbreaking emoticons hr',
        toolbar: 'undo redo | bold italic removeformat | alignleft aligncenter alignright alignjustify | bullist numlist | link image | hr | code',
        file_browser_callback: RoxyFileBrowser,
        menubar: false,
        convert_urls : false,
        extended_valid_elements : "img[src|width|style|height|align],script"
         //<feedback></feedback>*/
    //<img style="float: left;" src="../img/content/1441271881_11345.jpg" alt="" width="407" height="305" />
    };

    $scope.modalChangeMenu = function(item){
        if(item == null)
            $scope.modalMenuId = false;
        else
            $scope.modalMenuId = item.id;
    };

    $scope.create = function () {
        $scope.modalTitle = 'Создание статьи';
        $scope.status = 'ins';
        $scope.modalArr = {style: {width: '700px', marginLeft: '-350px'}};
        $scope.modal = true;
    }

    $scope.edit = function (id) {
        //log(id);
        $scope.modalTitle = 'Редактирование статьи';
        $scope.status = 'edit';
        $scope.http.post('/content/edit', {id: id})
            .then(function(response){
                log(response.data);
                $scope.modalArr.menuObj = _.find($scope.arr.menu, {id: response.data.menuId});
                $scope.modalMenuId = response.data.menuId;
                $scope.modalArr.itemsObj = _.find($scope.arr.items, {id: response.data.itemId});
                $scope.form.id = response.data.id;
                $scope.form.title = response.data.title;
                $scope.form.text = response.data.text;
            });
        $scope.modalArr = {style: {width: '700px', marginLeft: '-350px'}};
        $scope.modal = true;
    }

    $scope.save = function () {
        if($scope.modalArr.menuObj != undefined)
            $scope.form.menuId = $scope.modalArr.menuObj.id;
        else
            $scope.form.menuId = null;

        if($scope.modalArr.itemsObj != undefined)
            $scope.form.itemId = $scope.modalArr.itemsObj.id;
        else
            $scope.form.itemId = null;

        if($scope.status == 'ins'){
            log($scope.form);
            $scope.http.post('/content/save', {form: $scope.form})
                .then(function(response){
                    $scope.form.id = parseInt(response.data);
                    $scope.content.unshift($scope.form);
                    log(response.data, $scope.form);
                    $scope.closeModal();
                });
        }else{
            //log($scope.form);
            $scope.http.post('/content/save', {form: $scope.form})
                .then(function(response){
                    for(var i = 0; i < $scope.content.length; i++){
                        if($scope.content[i].id == $scope.form.id){
                            $scope.content[i].title = $scope.form.title;
                            break;
                        }
                    }
                    $scope.closeModal();
                });
        }
    }

    $scope.view = function (id) {
        //$scope.modalTitle = 'Просмотр статьи';
        $scope.status = 'view';
        $scope.http.post('/content/edit', {id: id})
            .then(function(response){
                log(response.data);
                $scope.contentView = response.data.text;
                $scope.modalTitle = response.data.title;
            });
        $scope.modalArr = {style: {width: '700px', marginLeft: '-350px'}};
        $scope.modal = true;
    }

    $scope.delete = function(item){
        $scope.modalTitle = 'Удаление статьи';
        $scope.nameDel = item.title;
        $scope.delId = item.id;
        $scope.status = 'del';
        $scope.modal = true;
    }

    $scope.del = function(){
        $scope.http.post('/content/del', {id: $scope.delId});
        _.remove($scope.content, {id: $scope.delId});
        $scope.delId = false;
        $scope.closeModal();
    };

    $scope.closeModal = function () {
        $scope.form = {};
        $scope.modalArr = {};
        $scope.modal = false;
    };

    $scope.changeStatus = function(id, status){
        var data = {id: id, status: status};
        $scope.http.post('/content/status', data);
    };

    $scope.changeSlider = function(id, slider){
        var data = {id: id, slider: slider};
        $scope.http.post('/content/slider', data);
    };

    $scope.selFilterMenu = function(item){
        if(item == null)
            $scope.menuId = false;
        else
            $scope.menuId = item.id;
    };
}]);

function RoxyFileBrowser(field_name, url, type, win) {
    var roxyFileman = '/js/lib/fileman/index.html';
    if (roxyFileman.indexOf("?") < 0) {
        roxyFileman += "?type=" + type;
    }
    else {
        roxyFileman += "&type=" + type;
    }
    roxyFileman += '&input=' + field_name + '&value=' + win.document.getElementById(field_name).value;
    if(tinyMCE.activeEditor.settings.language){
        roxyFileman += '&langCode=' + tinyMCE.activeEditor.settings.language;
    }
    tinyMCE.activeEditor.windowManager.open({
        file: roxyFileman,
        title: 'Roxy Fileman',
        width: 850,
        height: 650,
        resizable: "yes",
        plugins: "media",
        inline: "yes",
        close_previous: "no"
    }, {     window: win,     input: field_name    });
    return false;
}