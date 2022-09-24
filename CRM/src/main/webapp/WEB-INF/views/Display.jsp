<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRM</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />

<style type="text/css">
table.table tr td:last-of-type {
	display: flex;
	justify-content: space-evenly;
}

table.table tr th:last-of-type {
	text-align: center;
	border-left: none;
}

table.table tr td:last-of-type a:last-of-type {
	color: #e72020;
}

.heading {
	background: teal;
	padding: 1rem 0;
	color: #fff;
	margin-bottom: 1rem;
}

.heading a {
	font-size: 24px;
	color: #000;
}

button.add_customer {
	border: none;
	background: teal;
	padding: 5px 10px;
	font-weight: 600;
	border-radius: 4px;
	margin-bottom: 1rem;
}

table.table thead {
	background: teal;
	color: #fff;
}

table.table tbody tr:nth-child(even) {
	background: #e7f9f796;
}
</style>
</head>
<body>
	<div class="main">
		<div class="container_">
			<div class="heading">
				<h1 class="text-center">Customer Relationship Management</h1>
			</div>
			<div class="container">
				<div class="new_record">
					<button type="button" class="add_customer">
						<a href="/CRM/new_customer" style="text-decoration: none; color: #fff;"><i
							class="fa-solid fa-plus"></i> Add Customer</a>
					</button>
				</div>
				<div class="table_wrapper">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${record}" var="record">
								<tr>
									<td>${record.firstName }</td>
									<td>${record.lastName }</td>
									<td>${record.email }</td>
									<td><a role="button"
										href="/CRM/edit/${record.id}"><i
											class="fa-solid fa-pen-to-square"></i></a> <a role="button"
										onclick="return confirmDelete(this, '/CRM/delete/${record.id}')"><i
											class="fa-solid fa-trash"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
	<script>
		function confirmDelete(delForm, delUrl) {
			if (confirm("Are you sure you want to delete the customer?")) {
				delForm.href = delUrl;
				return true;
			}
			return false;
		}
	</script>
</body>
</html>