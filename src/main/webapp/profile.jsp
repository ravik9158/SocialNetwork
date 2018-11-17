<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Index</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

</head>
<body>
<div class="navbar navbar-custom  navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="./">Social Network</a>
        </div>
        <div class="navbar-collapse collapse">
            <div class="navbar-right">
                <a href="#" class="navbar-brand">Ru</a>
                <a href="#" class="navbar-brand">En</a>
                <a href="#" class="navbar-brand">Logout</a>
            </div>
        </div>
    </div>
</div>
<hr/>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="sidebar-header" style="text-align: center; margin-top: 20px;">
                <div class="card">
                    <img class="img-circle img-thumbnail social-img" src="./img/noname.svg" alt="Your profile image">
                </div>
                <h4>Your name</h4>
            </div>

            <div class="panel panel-default ">
                <div class="panel-heading">
                    <h3 class="panel-title">User menu</h3>
                </div>
                <div class="list-group">
                    <a href="./profile" class="list-group-item">Profile</a>
                    <a href="./messages" class="list-group-item">Messages</a>
                    <a href="./friends" class="list-group-item">Friends</a>
                    <a href="./users" class="list-group-item">Users</a>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Admin menu</h3>
                </div>
                <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-danger">Block user</a>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <h2>Your avatar.</h2>
            <div class="profile-block">
                <div>
                    <div class="image-drop border-dotted" ondrop="dragAndDrop(event)" ondragover="dragEnter(event)" ondragenter="dragEnter(event)" ondragleave="dragLeave(event)">
                        <p class="drop-text">Drop your image here.</p>
                    </div>
                    <div class="btn-vertical">
                        <button class="btn btn-lg btn-success btn-left">Update avatar</button>
                    </div>
                </div>
            </div>
            <div class="profile-block">
                <h2>Your profile.</h2>
                <form action="/changeProfile" method="post">
                    <div class="panel panel-default">
                        <div class="list-group">

                            <div class="list-group-item">
                                <label for="email">Email: <input type="text" name="email" class="form-control"
                                                                 id="email" disabled/></label>
                            </div>
                            <div class="list-group-item">
                                <label for="firstname">First name: <input type="text" name="firstname"
                                                                          class="form-control"
                                                                          id="firstname"/></label>
                            </div>
                            <div class="list-group-item">
                                <label for="lastname">Last name: <input type="text" name="lastname" class="form-control"
                                                                        id="lastname"/></label>
                            </div>
                            <div class="list-group-item">
                                <label for="dob">Birth date: <input type="date" name="dob" class="form-control"
                                                                    id="dob"/></label>
                            </div>
                            <div class="list-group-item"> Gender:
                                <label class="radio-inline"><input type="radio" name="sex" value="1">Male</label>
                                <label class="radio-inline"><input type="radio" name="sex" value="2">Female</label>
                            </div>
                            <div class="list-group-item">
                                <label for="phone">Phone: <input type="text" name="phone" class="form-control"
                                                                 id="phone"/></label>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-lg btn-success">Change profile</button>
                </form>
            </div>
            <div class="profile-block">
                <h2>Change password</h2>
                <form action="/changePassword" method="post">
                    <div class="panel panel-default">
                        <div class="list-group">

                            <div class="list-group-item">
                                <label for="oldpassword">Old Password: <input type="password" name="oldpassword"
                                                                              class="form-control"
                                                                              id="oldpassword"/></label>
                            </div>
                            <div class="list-group-item">
                                <label for="newpassword">New Password: <input type="password" name="newpassword"
                                                                              class="form-control"
                                                                              id="newpassword"/></label>
                            </div>
                            <div class="list-group-item">
                                <label for="repeatpassword">Repeat Password: <input type="password"
                                                                                    name="repeatpassword"
                                                                                    class="form-control"
                                                                                    id="repeatpassword"/></label>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-lg btn-success">Change password</button>
                </form>
            </div>
        </div>
    </div>
    <hr/>
    <footer>
        <p>&copy Все права защищены</p>
    </footer>
</div>


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/profile-dnd.js"></script>
</body>
</html>