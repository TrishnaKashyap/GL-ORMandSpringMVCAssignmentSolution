<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Records</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
table.table tr td:last-of-type {
	display: flex;
	justify-content: space-evenly;
}

table.table tr th:last-of-type {
	text-align: center;
}

table.table tr td:last-of-type a:last-of-type {
	color: #e72020;
}

.heading {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 1rem 0;
}

.heading a {
	font-size: 24px;
	color: #000;
}
</style>
</head>
<body>
	<div class="main">
		<div class="container">
			<div class="heading">
				<h1 class="text-center">All Registrations</h1>
				<a href="/College_Fest_Registration/"><i
					class="fa-solid fa-delete-left"></i></a>
			</div>
			<div class="table_wrapper">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Student Id</th>
							<th>Name</th>
							<th>Department</th>
							<th>Country</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${record}" var="record">
							<tr>
								<td>${record.student_id}</td>
								<td>${record.student_name }</td>
								<td>${record.student_dept }</td>
								<td>${record.student_country }</td>
								<td><a role="button"
									href="/College_Fest_Registration/records/edit/${record.student_id}"><i
										class="fa-solid fa-pen-to-square"></i></a> <a role="button"
									href="/College_Fest_Registration/records/delete/${record.student_id}"><i
										class="fa-solid fa-trash"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="new_record text-end">
				<button type="button" class="btn btn-primary">
					<a href="/College_Fest_Registration/records/new_registration"
						style="text-decoration: none; color: #fff;"><i
						class="fa-solid fa-plus"></i> New Registration</a>
				</button>
			</div>
		</div>
	</div>
</body>
</html>