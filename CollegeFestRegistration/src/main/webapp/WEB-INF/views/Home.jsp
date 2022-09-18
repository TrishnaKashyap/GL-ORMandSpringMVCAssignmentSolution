<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Home</title>

<style type="text/css">
ul.list_items li:first-of-type {
	margin-right: 1rem;
}

.main {
	text-align: center;
}

.list_items {
	list-style: none;
	display: flex;
	justify-content: center;
	padding: 0;
}

ul.list_items li a {
	text-decoration: none;
	font-weight: 600;
	font-size: 20px;
	background: teal;
	color: #fff;
	font-family: system-ui;
	padding: 7px 21px;
	border-radius: 24px;
}
</style>
</head>

<body>
	<div class="main">
		<div class="heading">
			<h1>College Fest Registrations</h1>
		</div>
		<div class="operation_list">
			<ul class="list_items">
				<li><a
					href="/College_Fest_Registration/records/new_registration"> New
						Registration</a></li>
				<li><a href="/College_Fest_Registration/records/all_records">
						See all records</a></li>
			</ul>
		</div>
	</div>
</body>

</html>