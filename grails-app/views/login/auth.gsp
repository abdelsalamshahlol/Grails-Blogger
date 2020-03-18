<!doctype html>
<html lang="en">
<head>
	<meta name="layout" content="bare">
	<title>Login | MTV BLog Tech</title>
	<asset:stylesheet href="login.css"/>
</head>

<body>
<div class="container">
	<div id="login-row" class="row justify-content-center align-items-center">
		<div id="login-column" class="col-md-6">
			<div class="box">
				<div class="shape1"></div>

				<div class="shape2"></div>

				<div class="shape3"></div>

				<div class="shape4"></div>

				<div class="shape5"></div>

				<div class="shape6"></div>

				<div class="shape7"></div>

				<div class="float">
					<form class="form" action='${postUrl}' method="POST">
						<div class="form-group">
							<label for="username" class="text-white">Username:</label><br>
							<input type="text" name="username" id="username" class="form-control">
						</div>

						<div class="form-group">
							<label for="password" class="text-white">Password:</label><br>
							<input type="password" name="password" id="password" class="form-control">
						</div>

						<div class="form-group">
							<input type="submit" class="btn btn-info btn-md" value="submit">
						</div>
					</form>
				</div>
			</div>
		</div>
		<g:if test="${flash.message}" >
			<div class="alert alert-danger fixed-top" role="alert">
				${flash.message}
			</div>
		</g:if>
	</div>
</div>
</body>
</html>