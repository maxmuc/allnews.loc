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

	<script src="/bower_components/jquery/dist/jquery.min.js" type="text/javascript"></script>
	<!--<script src="/js/lib/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>-->
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
<?php $url = uri_string(); if($url == ''){$url = '/';}else{$url = '/'.$url;}?>
<div id="main" ng-init='arr.menu=<?=$menu?>; arr.items=<?=$items?>; arr.url="<?=$url?>"'>

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
                        <div class="block">
                            <div class="zag">Курсы <span>валют</span></div>

                            <div style="margin: 10px 0;">
                                <!--Kurs.com.ua main-ukraine 200x130 blue-->
                                <div id='kurs-com-ua-informer-main-ukraine-200x130-blue-container'><a href="//kurs.com.ua/informer" id="kurs-com-ua-informer-main-ukraine-200x130-blue" title="Курс валют информер Украина" target="_blank">Информер курса валют</a></div>
                                <script type='text/javascript'>
                                    (function() {var iframe = '<ifr'+'ame src="//kurs.com.ua/informer/inf2?color=blue" width="216" height="130" frameborder="0" vspace="0" scrolling="no" hspace="0"></ifr'+'ame>';var container = document.getElementById('kurs-com-ua-informer-main-ukraine-200x130-blue');container.parentNode.innerHTML = iframe;})();
                                </script>
                                <noscript><img src='//kurs.com.ua/static/images/informer/kurs.png' width='52' height='26' alt='kurs.com.ua: курс валют в Украине!' title='Курс валют' border='0' /></noscript>
                                <!--//Kurs.com.ua main-ukraine 200x130 blue-->
                            </div>
                        </div>

                        <div class="block weather">
                            <div id="SinoptikInformer" style="width:244px;" class="SinoptikInformer type2c1">
                                <div class="siBody1">
                                    <table style="width: 100%;">
                                        <tbody><tr><td class="siCityV11" style="width:100%;"><div class="siCityName11"><a onmousedown="siClickCount();" href="https://sinoptik.ua/погода-геническ" target="_blank" style="font-size: 110% !important;">Погода в <span style="font-size: 110% !important;">Геническе</span></a></div></tr><tr><td style="width:100%;"><div class="siCityV211"><div id="siCont0" class="siBodyContent"><div class="siLeft"><div class="siTerm"></div><div class="siT" id="siT0" style="color: #fff !important;"></div><div id="weatherIco0"></div></div><div class="siInf" style="width: 102px !important;"><p style="color: #fff !important; font-size: 110% !important;">влажность: <span id="vl0" style="color: #fff !important; font-size: 110% !important;"></span></p><p style="color: #fff !important; font-size: 110% !important;">давление: <span id="dav0" style="color: #fff !important;"></span></p><p style="color: #fff !important; font-size: 110% !important;">ветер: <span id="wind0" style="color: #fff !important;"></span></p></div></div></div></td></tr></tbody></table>
                                </div>
                            </div>
                            <script type="text/javascript" charset="UTF-8" src="//sinoptik.ua/informers_js.php?title=3&amp;wind=3&amp;cities=303005243&amp;lang=ru"></script>
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