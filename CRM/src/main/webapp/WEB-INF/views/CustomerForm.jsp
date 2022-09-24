<!DOCTYPE html>
<html>
<head>
<title>Record</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>


<style type="text/css">
.container.custom_container {
	display: flex;
	justify-content: space-between;
	width: 60%;
	box-shadow: 2px 2px 8px 0 #ccc;
	align-items: center;
	padding:0;
}

.right_sec {
	width: 60%;
    padding: 1rem 3rem;

}
label.form-label {
    font-family: cursive;
    color: #666;
}
.main {
	min-height:100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}
.right_sec h1 {
    color: teal;
    font-family: 'Font Awesome 6 Free';
font-size: 21px;
    margin-bottom: 19px;
    letter-spacing: 3px;
}
a.back_btn {
    position: absolute;
    right: 17%;
    top: 18%;
    font-size: 1.5rem;
    color: teal;
}
.left_sec {
    min-height: 64vh;
    background: teal;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 40%;
}
button.submit_btn {
    border: none;
    background: teal;
    color: #fff;
    width: 58%;
    padding: 10px;
    font-weight: 600;
    font-family: 'Font Awesome 6 Free';
    border-radius: 50px;
    letter-spacing: 4px;
}
form {
    margin: 0;
}

</style>

</head>
<body>
	<div class="main">
		<a href="/CRM/" class="back_btn"><i
			class="fa-solid fa-delete-left"></i></a>
		<div class="container custom_container">
			<div class="left_sec">
				<img
					src="https://www.freeiconspng.com/thumbs/add-icon-png/add-new-plus-user-icon--icon-search-engine-32.png" />
			</div>
			<div class="right_sec">
				<h1>Customer Record Portal</h1>
				<form action="/CRM/save_record" method="POST">
					<input type="hidden" name="id" value="${customers.id}" />
					<div class="mb-3">
						<label for="firstname" class="form-label"><strong>First
								Name</strong></label> <input type="text" class="form-control" id="firstname"
							value="${customers.firstName}" name="firstName" required />
					</div>
					<div class="mb-3">
						<label for="lastname" class="form-label"><strong>Last
								Name</strong></label> <input type="text" class="form-control" id="lastname"
							name="lastName" value="${customers.lastName}" required />
					</div>
					<div class="mb-3">
						<label class="form-label" for="email"><strong>Email</strong></label>
						<input type="text" class="form-control" id="email" name="email"
							value="${customers.email}" required />
					</div>
					<div class="text-center">
						<button type="submit" class="submit_btn">Submit</button>
					</div>

				</form>
			</div>
		</div>

	</div>

</body>
</html>