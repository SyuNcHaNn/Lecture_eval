<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>

<!DOCTYPE html>
<html>
<head>
<title>������</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- ��Ʈ��Ʈ�� CSS �߰� -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<!-- Ŀ���� CSS �߰� -->
<link rel="stylesheet" href="./css/custom.css">
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">

		<a class="navbar-brand" href="index.jsp">������</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbar">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="index.jsp">����</a></li>
				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">ȸ�� ����</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
						<a class="dropdown-item" href="userLogin.jsp">�α���</a>
						<a class="dropdown-item active" href="userJoin.jsp">ȸ������</a>
						<a class="dropdown-item" href="userLogout.jsp">�α׾ƿ�</a>
					</div>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="������ �Է��ϼ���." aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">�˻�</button>
			</form>
		</div>
	</nav>
	
	<div class="container mt-3" style="max-width: 560px;">
		<form method="post" action="./userRegisterAction.jsp">
			<div class="form-group">
				<label>���̵�</label>
				<input type="text" name="userID" class="form-control">
			</div>
			<div class="form-group">
				<label>��й�ȣ</label>
				<input type="password" name="userPassword" class="form-control">
			</div>
			<button type="submit" class="btn btn-primary">ȸ������</button>
		</form>
	</div>
	
	<footer class="bg-dark mt-4 p-5 text-center" style="color:#FFFFFF;">
		Copyright �� "�Ⱦ�߽�ŷ" All Rights Reserved.
	</footer>

	<!-- �������� �߰� -->
	<script src="./js/jquery.min.js"></script>
	<!-- Popper �߰� -->
	<script src="./js/popper.min.js"></script>
	<!-- ��Ʈ��Ʈ�� �߰� -->
	<script src="./js/bootstrap.min.js"></script>

</body>
</html>