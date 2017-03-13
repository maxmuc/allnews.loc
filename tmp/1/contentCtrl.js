app.controller('contentIndexCtrl', ['$scope', function ($scope) {
    $scope.arr.sidebar.st = false;
    $scope.modalArr = {};
    $scope.menuId = false;
    $scope.modalMenuId = false;

    $scope.tinymceOptions = {
        height: 200,
        plugins: 'link textcolor colorpicker image code table media nonbreaking emoticons hr',
        toolbar: 'undo redo | bold italic removeformat | alignleft aligncenter alignright alignjustify | bullist numlist | link image | hr | code',
        /*file_browser_callback: RoxyFileBrowser,*/
        menubar: false/*,
         extended_valid_elements : 'specialist[title],feedback'
         //<feedback></feedback>*/
    };

    $scope.selFilterMenu = function(item){
        if(item == null)
            $scope.menuId = false;
        else
            $scope.menuId = item.id;
    };

    $scope.modalChangeMenu = function(item){
        if(item == null)
            $scope.modalMenuId = false;
        else
            $scope.modalMenuId = item.id;
    };

    $scope.editOrCreate = function(id){

        if(id){
            $scope.modalArr.title = 'Редактирование статьи';
            $scope.modalArr.form = {id: id};
            $scope.http.post('/content/getText', {id: id})
                .then(function(response) {
                    $scope.modalArr.form.name = response.data.name;
                    $scope.modalArr.form.text = response.data.text;
                    $scope.modalArr.menuObj = _.find($scope.arr.menu, {id: response.data.menuId});
                    $scope.modalMenuId = response.data.menuId;
                    $scope.modalArr.itemsObj = _.find($scope.arr.items, {id: response.data.itemId});
                    log(response.data);
                });
        }else{
            $scope.modalArr.title = 'Создание статьи';
        }

        $scope.modalArr.status = 'insupd';
        $scope.modalArr.style = {width: '700px', marginLeft: '-350px'};
        $scope.modalMenu = true;
    };

    $scope.save = function(){
        if($scope.modalArr.menuObj != undefined)
            $scope.modalArr.form.menuId = $scope.modalArr.menuObj.id;
        else
            $scope.modalArr.form.menuId = null;

        if($scope.modalArr.itemsObj != undefined)
            $scope.modalArr.form.itemId = $scope.modalArr.itemsObj.id;
        else
            $scope.modalArr.form.itemId = null;

        $scope.http.post('/content/http', $scope.modalArr)
            .then(function(response){
                if(!response.data){
                    for(var i = 0; i < $scope.content.length; i++){
                        if($scope.content[i].id == $scope.modalArr.form.id){
                            $scope.content[i].name = $scope.modalArr.form.name;
                            break;
                        }
                    }
                }else{
                    var data = {id: response.data, name: $scope.modalArr.form.name, menuId: $scope.modalArr.form.menuId, itemId: $scope.modalArr.form.itemId, status: 0};
                    $scope.content.unshift(data);
                }
                $scope.closeModal();
            });
    };

    $scope.closeModal = function () {
        $scope.modalArr = {};
        $scope.modalMenu = false;
    };
}]);
