package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "registrations")
public class Registrations {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int student_id;
	private String student_name;
	private String student_dept;
	private String student_country;

//	default constructor
	public Registrations() {
		super();
	}

// parameterized constructor
	public Registrations( String student_name, String student_dept, String student_country) {
		super();
		this.student_name = student_name;
		this.student_dept = student_dept;
		this.student_country = student_country;
	}

//	getters and setters
	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getStudent_dept() {
		return student_dept;
	}

	public void setStudent_dept(String student_dept) {
		this.student_dept = student_dept;
	}

	public String getStudent_country() {
		return student_country;
	}

	public void setStudent_country(String student_country) {
		this.student_country = student_country;
	}

//	tostring method
	@Override
	public String toString() {
		return "Registrations [student_id=" + student_id + ", student_name=" + student_name + ", student_dept="
				+ student_dept + ", student_country=" + student_country + "]";
	}
}
