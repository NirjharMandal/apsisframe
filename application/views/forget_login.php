<!DOCTYPE html>
<style>
.bgbg { 
  background: url('<?=base_url()?>img/logo/login_back.jpg') no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Apsis</title>
    <link rel="shortcut icon" href="<?=base_url()?>img/logo/favicon.ico" type="image/x-icon"/>
    <!-- Bootstrap Core CSS -->
    <link href="<?=base_url()?>css/bootstrap.css" rel="stylesheet">
    <link href="<?=base_url()?>css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
    <link href="<?=base_url()?>css/plugins/timeline.css" rel="stylesheet">
    <link href="<?=base_url()?>css/sb-admin-2.css" rel="stylesheet">
    <link href="<?=base_url()?>css/plugins/morris.css" rel="stylesheet">
    <link href="<?=base_url()?>css/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="<?=base_url()?>css/datepicker.css" rel="stylesheet">
    <link href="<?=base_url()?>css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="<?=base_url()?>css/jquery-ui.min.css" rel="stylesheet">
    <link href="<?=base_url()?>css/select2.css" rel="stylesheet">
    <link href="<?=base_url()?>css/apsis_style.css" rel="stylesheet">
</head>

<body class="bgbg">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-1 text-center" style="padding-top: 100px;">
                <img src="<?=base_url()?>img/logo/logo_new.png" alt="" style="width: 100%"/>
                <span class="text-info large">Smart Requisition Management System</span>
            </div>
            <div class="col-md-4" style="">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Enter your email to get new password</h3>
                    </div>
                    <form role="form" action="<?=base_url()?>login_cont/gain_pass" method="post">
                        <div class="panel-body">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control form-control-full" placeholder="E-mail" name="email" type="email" value="" autofocus>
                                </div>
                                <input type="submit" value="Submit" class="btn btn-lg btn-primary btn-block"/>
                                <br>
                                <div class="text-center small"><i class="fa fa-copyright"></i> Apsis Solutions Limited</div>
                            </fieldset>
                        </div>
                    </form>    
                </div>
            </div>
        </div>
    </div>
</body>
</html>
