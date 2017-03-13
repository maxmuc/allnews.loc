<!DOCTYPE html>
<html ng-app="app" ng-controller="appCtrl">
<head>
	<meta charset="utf-8">
	<title><?=$this->title?></title>
	<link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">

	<link rel="stylesheet" href="/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="/bower_components/bootstrap/dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/bower_components/font-awesome/css/font-awesome.min.css">

	<link rel="stylesheet" href="/css/fonts.css">
    <link rel="stylesheet" href="/css/style.css">

	<link href="/bower_components/toastr/toastr.min.css" rel="stylesheet"/>

	<!--<script src="/bower_components/jquery/dist/jquery.min.js" type="text/javascript"></script>-->
	<script src="/js/lib/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
	<script src="/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<script src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="/bower_components/toastr/toastr.min.js"></script>
	<script src="/bower_components/lodash/dist/lodash.min.js"></script>
	<script src="/bower_components/tinymce/tinymce.min.js"></script>

	<script src="/bower_components/angular/angular.js"></script>
	<script src="/bower_components/angular-animate/angular-animate.min.js"></script>
	<script src="/bower_components/angular-ui-sortable/sortable.min.js"></script>
	<script src="/bower_components/angular-ui-tinymce/dist/tinymce.min.js"></script>
	<script src="/js/app/app.js"></script>
	<script src="/js/app/ctrl.js"></script>

</head>
<body <?=isset($adminBar)?'style="margin-top: 28px;"':false?>>

<?=isset($adminBar)?$adminBar:false?>

<!--<div style="font-size: 70%; text-align: right;">Page rendered in <strong>{elapsed_time}</strong> seconds.</div>-->

<div id="main" ng-init='arr.menu=<?=$menu?>; arr.items=<?=$items?>'>

	<div class="header"><?=$header?></div>

	<?php if(empty($this->uri->segment(1))): echo $content; else: ?>
		<div class="section">

			<div class="row">
				
				<?php if($this->sideBar): ?>

					<div class="col-xs-9" style="padding-right: 2px;">
						<div class="panel panel-default block" style="position: relative; padding: 0;">
			                <div class="panel-heading" style="color: #6b6b6b;"><?=$this->title?></div>
			                <div class="panel-body">
			                    <?=$content?>
			                </div>  
			            </div>
					</div>
					<div class="col-xs-3" style="padding-left: 2px;">
						<div class="panel panel-default block" style="position: relative; padding: 0;">
			                <div class="panel-heading"><?=$this->title?></div>
			                <div class="panel-body">
			                  	sideBar
			                </div>  
			            </div>
					</div>

				<?php else: ?>

					<div class="col-xs-12">
						<div class="panel panel-default block" style="position: relative; padding: 0;">
			                <div class="panel-heading"><?=$this->title?></div>
			                <div class="panel-body">
			                    <?=$content?>
			                </div>  
			            </div>
					</div>

				<?php endif; ?>
				
			</div>
            
        </div>		
	<?php endif; ?>	

	<div class="header"><?=$footer?></div>
	
</div>

</body>
</html>