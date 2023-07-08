<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

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

		<a class="navbar-brand" href="index.jsp">������ ����Ʈ</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbar">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">����</a></li>
				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">ȸ�� ����</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
						<a class="dropdown-item" href="userLogin.jsp">�α���</a>
						<a class="dropdown-item" href="userRegister.jsp">ȸ������</a>
						<a class="dropdown-item" href="#">�α׾ƿ�</a>
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

	<div class="container">

		<form method="get" action="./index.jsp" class="form-inline mt-3">
			<select name="lectureDivide" class="form-control mx-1 mt-2">
				<option value="��ü">��ü</option>
				<option value="����">����</option>
				<option value="����">����</option>
				<option value="��Ÿ">��Ÿ</option>
			</select> <input type="text" name="search" class="form-control mx-1 mt-2"
				placeholder="������ �Է��ϼ���.">
			<button type="submit" class="btn btn-primary mx-1 mt-2">�˻�</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">����ϱ�</a>
			<a class="btn btn-danger ml-1 mt-2" data-toggle="modal" href="#reportModal">�Ű�</a>
		</form>

		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						��ǻ�Ͱ���&nbsp;<small>�ֽ���</small>
					</div>
					<div class="col-4 text-right">
						���� <span style="color: red;">A</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					���� ���� ���ǿ���.&nbsp;<small>(2017�� �����б�)</small>
				</h5>
				<p class="card-text">���ǰ� ���� �γ��ؼ�, ������ ���� ��� �� ���� �� ������ ������ �� ������
					�ʹ� ���� �� �����ϴ�.</p>
				<div class="row">
					<div class="col-9 text-left">
						���� <span style="color: red;">A</span> �γ� <span style="color: red;">A</span>
						���� <span style="color: red;">B</span> <span style="color: green;">(��õ:
							15��)</span>
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('��õ�Ͻðڽ��ϱ�?')"
							href="./likeAction.jsp?evaluationID=">��õ</a> <a
							onclick="return confirm('�����Ͻðڽ��ϱ�?')"
							href="./deleteAction.jsp?evaluationID=">����</a>
					</div>
				</div>
			</div>
		</div>

		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						��ǻ�ͱ׷��Ƚ�&nbsp;<small>�ڿ���</small>
					</div>
					<div class="col-4 text-right">
						���� <span style="color: red;">B</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					������ ���� �� �����ϴ�.&nbsp;<small>(2017�� �����б�)</small>
				</h5>
				<p class="card-text">��ǻ�ͱ׷��Ƚ��� ó�� ����µ�, ����� ����־��� �� ���ƿ�.</p>
				<div class="row">
					<div class="col-9 text-left">
						���� <span style="color: red;">B</span> �γ� <span style="color: red;">C</span>
						���� <span style="color: red;">B</span> <span style="color: green;">(��õ:
							1)</span>
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('��õ�Ͻðڽ��ϱ�?')"
							href="./likeAction.jsp?evaluationID=">��õ</a> <a
							onclick="return confirm('�����Ͻðڽ��ϱ�?')"
							href="./deleteAction.jsp?evaluationID=">����</a>
					</div>
				</div>
			</div>
		</div>

		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">
						�˰���&nbsp;<small>������</small>
					</div>
					<div class="col-4 text-right">
						���� <span style="color: red;">A</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					���Ƿ��� ���� ���� �����Դϴ�.&nbsp;<small>(2017�� 2�б�)</small>
				</h5>
				<p class="card-text">�˰��� ���� ����ġ�ô� �����Ե� �߿��� �ְ�� �� ����ġ�ʴϴ�.</p>
				<div class="row">
					<div class="col-9 text-left">
						���� <span style="color: red;">A</span> �γ� <span style="color: red;">C</span>
						���� <span style="color: red;">A</span> <span style="color: green;">(��õ:
							0)</span>
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('��õ�Ͻðڽ��ϱ�?')"
							href="./likeAction.jsp?evaluationID=">��õ</a> <a
							onclick="return confirm('�����Ͻðڽ��ϱ�?')"
							href="./deleteAction.jsp?evaluationID=">����</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<ul class="pagination justify-content-center mt-3">
		<li class="page-item">
			<a class="page-link" href="#">����</a>
		</li>
		<li class="page-item">
			<a class="page-link" href="#">����</a>
		</li>
	</ul>
	
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hiden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">�� ���</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./evaluationRegisterAction.jsp" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>���Ǹ�</label>
								<input type="text" name="lectureName" class="form-control" maxlength="20">
							</div>
							<div class="form-group col-sm-6">
								<label>������</label>
								<input type="text" name="professorName" class="form-control" maxlength="20">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<label>���� ����</label>
								<select name="lectureYear" class="form-control">
									<option value="2011">2011</option>
									<option value="2012">2012</option>
									<option value="2013">2013</option>
									<option value="2014">2014</option>
									<option value="2015">2015</option>
									<option value="2016">2016</option>
									<option value="2017">2017</option>
									<option value="2018" selected>2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
									<option value="2021">2021</option>
									<option value="2022">2022</option>
									<option value="2023">2023</option>
								</select>
							</div>
							
							<div class="form-group col-sm-4">
								<label>���� �б�</label>
								<select name="semesterDivide" class="form-control">
									<option name="1�б�" selected>1�б�</option>
									<option name="�����б�">�����б�</option>
									<option name="2�б�">2�б�</option>
									<option name="�ܿ��б�">�ܿ��б�</option>
								</select>
							</div>
							
							<div class="form-group col-sm-4">
								<label>���� ����</label>
								<select name="lectureDivide" class="form-control">
									<option name="����" selected>����</option>
									<option name="����">����</option>
									<option name="��Ÿ">��Ÿ</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>����</label>
							<input type="text" name="evaluationTitle" class="form-control" maxlength="20">
						</div>
						<div class="form-group">
							<label>����</label>
							<textarea type="text" name="evaluationContent" class="form-control" maxlength="2048" style="height:180px;"></textarea>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-3">
								<label>����</label>
								<select name="totalScore" class="form-control">
									<option value="A" selected>A</option>
									<option value="B">B</option>
									<option value="C">C</option>
									<option value="D">D</option>
									<option value="F">F</option>
								</select>
							</div>
							<div class="form-group col-sm-3">
								<label>����</label>
								<select name="creditScore" class="form-control">
									<option value="A" selected>A</option>
									<option value="B">B</option>
									<option value="C">C</option>
									<option value="D">D</option>
									<option value="F">F</option>
								</select>
							</div>
							<div class="form-group col-sm-3">
								<label>�γ�</label>
								<select name="comfortableScore" class="form-control">
									<option value="A" selected>A</option>
									<option value="B">B</option>
									<option value="C">C</option>
									<option value="D">D</option>
									<option value="F">F</option>
								</select>
							</div>
							<div class="form-group col-sm-3">
								<label>����</label>
								<select name="lectureScore" class="form-control">
									<option value="A" selected>A</option>
									<option value="B">B</option>
									<option value="C">C</option>
									<option value="D">D</option>
									<option value="F">F</option>
								</select>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">���</button>
							<button type="submit" class="btn btn-primary">����ϱ�</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modal">�Ű��ϱ�</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form method="post" action="./reportAction.jsp">
              <div class="form-group">
                <label>�Ű� ����</label>
                <input type="text" name="reportTitle" class="form-control" maxlength="20">
              </div>
              <div class="form-group">
                <label>�Ű� ����</label>
                <textarea type="text" name="reportContent" class="form-control" maxlength="2048" style="height: 180px;"></textarea>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">���</button>
                <button type="submit" class="btn btn-danger">�Ű��ϱ�</button>
              </div>
            </form>
          </div>
        </div>
      </div>
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