package maincontroller;

//import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	public MainController() {
		System.out.println("home controller");
	}
	@GetMapping("/")
	public String homePage()
	{
		return "Home";
	}
	

}