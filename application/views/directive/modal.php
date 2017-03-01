<style>
    .modalMenu {
        transition: all linear 0.5s;
        width: 540px;
        position: fixed;
        margin: 0 0 0 -250px;
        top: 10%;
        left: 50%;
        z-index: 100;
    }
    .ng-hide {
        opacity: 0;
        top: 0;
    }
    .modalMenu .panel-body{
        max-height: 500px;
        overflow-y: auto;
    }
    .tenycrud{
        position: fixed;
        bottom: 0;
        right: 0;
        left: 0;
        top: 0;
        background: #000000;
        opacity: 0.5;
        z-index: 99;
    }
    .closemodal{
        position: absolute !important;
        right: 14px;
        top: 14px;
        cursor: pointer;
        color: #a0a0a0;
    }
    .closemodal:hover{
        color: #767676;
    }
</style>

<div class="modalMenu" ng-show="modal" ng-style="modalArr.style">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title" style="padding-right: 14px;">{{modalTitle}}</h3>
            <span class="glyphicon glyphicon-remove closemodal" aria-hidden="true" ng-click="closeModal()"></span>
        </div>
        <div class="panel-body" ng-transclude ng-style="modalBodyHeight"></div>
        <div class="panel-footer" style="text-align: right;">
            <button type="button" class="btn btn-default" ng-click="closeModal()">Закрыть</button>
        </div>
    </div>
</div>

<div ng-show="modal" class="tenycrud"></div>