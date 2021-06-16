<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>로그인</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <!-- font awesome -->
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Custom style -->
        <link rel="stylesheet" href="../css/style.css" media="screen" title="no title" charset="utf-8">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="../js/bootstrap.js"></script>
 	
    </head>
 <style>
    .input-group {
    margin-top: 1em;
    margin-bottom: 1em;
}

 

.login-box {
    line-height: 2.3em;
    font-size: 1em;
    color: #aaa;
    margin-top: 1em;
    margin-bottom: 1em;
    padding-top: 0.5em;
    padding-bottom: 0.5em;
}

</style>


    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">

                    <div class="login-box well">
                        <form accept-charset="UTF-8" role="form" method="post" action="">
                            <legend>로그인</legend>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input type="text" id="userid" value='' placeholder="아이디를 입력하세요" class="form-control" />
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                <input type="password" id="password" value='' placeholder="비밀번호를 입력하세요" class="form-control" />
                            </div>
                            <button type="submit" id="login-submit" class="btn btn-default btn-block"/>로그인</button> <span class='text-center'></span>
                            <div class="form-group">
                                <a href="registerForm.php" class="btn btn-default btn-block"> 회원가입</a>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>

