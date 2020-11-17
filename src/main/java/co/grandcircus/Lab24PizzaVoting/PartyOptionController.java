package co.grandcircus.Lab24PizzaVoting;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PartyOptionController {

	@Autowired
	private PartyOptionRepository rep;
	
	@GetMapping("/vote")
	public String PartyOptionIndex (Model model) {
		List<PartyOption> partyoptions = rep.findAll();
		model.addAttribute("partyoptions", partyoptions);
		System.out.println("VOTES");
		return "vote";
	}
	
	@PostMapping("/vote/add")
	public String addPartOption (PartyOption partyoption, Model model) {
		rep.save(partyoption);
		List<PartyOption> partyoptions = rep.findAll();
		model.addAttribute("partyoption", partyoption);
		model.addAttribute("partyoptions", partyoptions);
		return "vote";
	}
	
	@GetMapping("/vote/add/{id}")
	public String addVote(@PathVariable Long id) {
		PartyOption po = rep.findById(id).get();
		int voteCount = po.getVotes() + 1;
		po.setVotes(voteCount);
		rep.save(po);
		System.out.println(rep.findById(id).get().getVotes());
		return "redirect:/vote";
	}
}
