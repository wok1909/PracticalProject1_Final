<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>

<body class="hold-transition register-page">
	<div class="register-box">
		<div class="register-logo">
			<a href="${pageContext.request.contextPath}/"><b>Admin</b>LTE</a>
		</div>
		<div class="card">
			<div class="card-body register-card-body">
				<p class="login-box-msg">Register a new membership</p>
				<form action="${pageContext.request.contextPath}/login/register" method="post">
					<div class="input-group mb-3">
						<input type="text" name="userid" class="form-control"
							placeholder="아이디">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-exclamation"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="text" name="username" class="form-control"
							placeholder="이름">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-user"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" name="password" class="form-control"
							placeholder="비밀번호">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" class="form-control" placeholder="비밀번호 확인">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="icheck-primary">
								<input type="checkbox" id="agreeTerms" name="terms"
									value="agree"> <label for="agreeTerms"> I agree
									to the <a href="#">terms</a>
								</label>
							</div>
						</div>
						<!-- /.col -->
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block">Register</button>
						</div>
						<!-- /.col -->
					</div>
				</form>
				<a href="${pageContext.request.contextPath}	/login/login" class="text-center">I already have
					a membership</a>
			</div>
			<!-- /.form-box -->
		</div>
		<!-- /.card -->
	</div>
	<!-- /.register-box -->

	<script> $(function () { $('input').iCheck({ checkboxClass: 'icheckbox_square-blue', radioClass: 'iradio_square-blue', increaseArea: '20%' // optional }); }); </script>
</body>
</html>

