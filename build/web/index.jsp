<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="shortcut icon" href="img/poltek.ico" >
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Politeknik Sukabumi | Widiawati</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
    
    <link href="css/plugins/social-buttons.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <br>
                    <div><center><img src="img/poltek.png" style="width:100px;height:100px"></center></div>
                    <div><h1  align="center">Sistem Informasi Politeknik Sukabumi</h1></div>
                    <ul class="nav nav-pills">
                        <li class="active"><a href="#mahasiswa" data-toggle="tab"> Mahasiswa</a>
                                </li>
                                <li><a href="#dosen" data-toggle="tab">Dosen</a>
                                </li>
                                <li><a href="#admin" data-toggle="tab">Management</a>
                                </li>
                        </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="mahasiswa">
                                    <div class="panel-body">
                                        <form role="form" method="post" action="loginproses1.jsp">
                                        <fieldset>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                <input class="form-control" placeholder="Username" name="txtuser" autofocus>
                                            </div>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-fw"></i></span>
                                                <input class="form-control" placeholder="Password" name="txtpass" type="password" value="">
                                            </div>
                                                <button type="submit" class="btn btn-success btn-lg btn-block"><i class="fa fa-sign-in fa-fw"></i> Login</button>
                                    </fieldset>
                                        </form>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="dosen">
                                    <div class="panel-body">
                                        <form role="form" method="post" action="loginproses2.jsp">
                                        <fieldset>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                <input class="form-control" placeholder="Username" name="txtuser" autofocus>
                                            </div>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-fw"></i></span>
                                                <input class="form-control" placeholder="Password" name="txtpass" type="password" value="">
                                            </div>
                                                <button type="submit" class="btn btn-success btn-lg btn-block"><i class="fa fa-sign-in fa-fw"></i> Login</button>
                                    </fieldset>
                                        </form>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="admin">
                                    <div class="panel-body">
                                        <form role="form" method="post" action="loginproses3.jsp">
                                        <fieldset>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                <input class="form-control" placeholder="Username" name="txtuser" autofocus>
                                            </div>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-fw"></i></span>
                                                <input class="form-control" placeholder="Password" name="txtpass" type="password" value="">
                                            </div>
                                                <button type="submit" class="btn btn-success btn-lg btn-block"><i class="fa fa-sign-in fa-fw"></i> Login</button>
                                        </fieldset>
                                        </form>
                                      </div>
                                 </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>
