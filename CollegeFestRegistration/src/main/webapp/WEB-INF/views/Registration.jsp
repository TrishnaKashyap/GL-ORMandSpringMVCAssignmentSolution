<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />

</head>
<body>
	<div class="text-center">
		<h1 class="mt-5">Registration Portal</h1>
	</div>
	<div class="d-flex align-items-center justify-content-center container"
		style="height: 60vh;">
		<form action="/College_Fest_Registration/records/save_record"
			method="POST"
			style="width: 55%; background: #f9f9f9; box-shadow: 2px 2px 8px 0 #ccc; padding: 2rem; border-radius: 10px; border: 2px solid #006ba7;">
			<input type="hidden" name="student_id"
				value="${registrations.student_id}" />
			<div class="mb-3">
				<label for="student_name" class="form-label"><strong>Full
						Name</strong></label> <input type="text" class="form-control" id="student_name"
					value="${registrations.student_name}" name="student_name" required />
			</div>
			<div class="mb-3">
				<label for="department" class="form-label"><strong>Department</strong></label>
				<input type="text" class="form-control" id="department"
					name="student_dept" value="${registrations.student_dept}" required />
			</div>
			<div class="mb-3">
				<label class="form-label" for="country"><strong>Country</strong></label>
				<input type="text" class="form-control" id="country"
					name="student_country" value="${registrations.student_country}"
					required />
			</div>
			<div class="d-flex justify-content-end">
				<button type="button" class="btn btn-warning me-1">
					<a href="/College_Fest_Registration/records/all_records"
						style="text-decoration: none; color: initial">Cancel</a>
				</button>
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>

		</form>
	</div>

</body>
</html>