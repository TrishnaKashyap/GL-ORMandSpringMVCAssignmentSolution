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

import entity.Customers;
import service.CustomerService;

@Controller
public class CustomerController {
	
	public CustomerController() {
		System.out.println("Customer controller");
	}
	
	@Autowired
	private CustomerService customerService;

	@GetMapping("/")
	public String printRecords(Map<String, List<Customers>> map) {
		List<Customers> records = customerService.printRecords();
		map.put("record", records);
		return "Display";
	}
	
	@GetMapping("/new_customer")
	public String newcustomer(Model model) {
		Customers newRecord = new Customers();
		model.addAttribute(newRecord);
		return "CustomerForm";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteRecord( @PathVariable int id) {
		this.customerService.deleteRecord(id);
		return "redirect:/";
	}
	
	@GetMapping("/edit/{id}")
	public String updateRecord(Model model, @PathVariable int id) {
		Customers setRecord = this.customerService.findRecord(id);
		model.addAttribute(setRecord);
		return "CustomerForm";
	}
	
	@PostMapping("/save_record")
	public String insertOrUpdate(Customers customer) {
		Customers updatedRecord = null;
		if(customer.getId() != 0) {
			updatedRecord = customerService.findRecord(customer.getId());
			updatedRecord.setFirstName(customer.getFirstName());
			updatedRecord.setLastName(customer.getLastName());
			updatedRecord.setEmail(customer.getEmail());
			System.out.println(updatedRecord);
		}
		else {
			updatedRecord = new Customers(customer.getFirstName(), customer.getLastName(), customer.getEmail());
		}
		this.customerService.saveOrUpdate(updatedRecord);
		return "redirect:/";
	} 

}