<script src='https://www.google.com/recaptcha/api.js'></script>

<form action="/users/reg" method="post" class="form-horizontal">

    <div class="form-group">
        <label for="email" class="col-xs-3 control-label">Email</label>
        <div class="col-xs-6">
            <input type="email" class="form-control" name="email" placeholder="Email">
        </div>
    </div>

    <div class="row">
        <div class="col-xs-6 col-xs-offset-3" style="text-align: center;">
            <div class="g-recaptcha" data-sitekey="6LeGHAcUAAAAADW3HfH7Y-2eXlaXORy4ot1SazMc" style="display: inline-block;"></div>
        </div>
    </div><br>

    <p style="text-align: center;">
        <input type="submit" class="btn btn-default" value="Зарегистрироваться" />
    </p>

</form>

<?php if(!empty($error)): ?>
    <script>
        $(document).ready(function(){
            toastr.error("<?=$error?>", 'Error', {timeOut: 5000, closeButton: true});
        });
    </script>
<?php endif; ?>