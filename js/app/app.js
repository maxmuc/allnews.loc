var log = console.log.bind(console);
var app = angular.module('app', ['ngAnimate', 'ui.sortable', 'ui.tinymce']);

app.directive('modal', function () {
    return {
        //controller: 'clientsIndexCtrl',
        templateUrl: '/directive/modal',
        transclude: true,
        link: function(scope, el, attr){


            /*if(attr.title == '')
             scope.title = 'Modal window';
             else
             scope.title = attr.title;

             /*var body = el.find('.panel-body');

             body.append().html('<div>Подтверждение удаления статьи - "<span style="color: blue;">123</span>"</div>');

             //body.append().text("Подтверждение удаления статьи");

             //log(attr.title);
             /*scope.title = attr.title;
             var e = angular.element('<div>');
             el.append(e); // добавляем ol к элементу для которого установлена директива
             e.append(angular.element()).text('Подтверждение удаления статьи - "<span style="color: blue;">123</span>"');*/

        }
    };
});