package maincontroller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Registrations;
import service.RegistrationService;

@Controller
@RequestMapping("/records")
public class RegistrationController {
	
	@Autowired
	private RegistrationService registerService;

	@GetMapping("/new_registration")
	public String newRegistration(Model model) {
		Registrations newRecord = new Registrations();
		model.addAttribute(newRecord);
		return "Registration";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteRecord( @PathVariable int id) {
		this.registerService.deleteRecord(id);
		return "redirect:/records/all_records";
	}
	
	@GetMapping("/edit/{id}")
	public String updateRecord(Model model, @PathVariable int id) {
		Registrations setRecord = this.registerService.findRecord(id);
		model.addAttribute(setRecord);
		return "Registration";
	}
	
	@GetMapping("/all_records")
	public ModelAndView printRecords(Map<String, List<Registrations>> map) {
		ModelAndView view = new ModelAndView("Display");
		List<Registrations> records = registerService.printRecords();
		map.put("record", records);
		return view;
	}
	
	@PostMapping("/save_record")
	public String insertOrUpdate(Registrations student) {
		Registrations updatedRecord = null;
		System.out.println(student.getStudent_id());
		if(student.getStudent_id() != 0) {
			updatedRecord = registerService.findRecord(student.getStudent_id());
			updatedRecord.setStudent_name(student.getStudent_name());
			updatedRecord.setStudent_dept(student.getStudent_dept());
			updatedRecord.setStudent_country(student.getStudent_country());
			System.out.println(updatedRecord);
		}
		else {
			updatedRecord = new Registrations(student.getStudent_name(), student.getStudent_dept(), student.getStudent_country());
		}
		System.out.println(updatedRecord);
		this.registerService.insertOrUpdate(updatedRecord);
		return "redirect:/records/all_records";
	} 

}