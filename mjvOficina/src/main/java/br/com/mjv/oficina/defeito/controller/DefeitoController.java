package br.com.mjv.oficina.defeito.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.mjv.oficina.defeito.model.Defeito;
import br.com.mjv.oficina.defeito.service.DefeitoService;
import br.com.mjv.oficina.peca.model.Peca;


/**
 * Classe controller para o cadastro de {@link Defeito}
 * @author renan
 *
 */
@Controller
@RequestMapping("/defeito")
public class DefeitoController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(DefeitoController.class);
	
	@Autowired
	private DefeitoService defeitoService;
	
	@GetMapping
	public ModelAndView cadastrarDefeitos() {
		ModelAndView mv = null;
		try {
			LOGGER.info("Início do método @Get cadastrarDefeitos");
			mv = new ModelAndView("cadastrardefeito");
			return mv;
		}catch(Exception e) {
			LOGGER.error("Erro DefeitoController:" + e.getMessage());
			mv = new ModelAndView("error");
			return mv;
		}finally {
			LOGGER.info("Fim do método @Get cadastrarDefeitos");
		}
	}
	
	@PostMapping("/cadastrar")
	public String salvarDefeito(String nome, Model model) {
		LOGGER.info("Inicio do método @Post salvarDefeito");
		
		if(StringUtils.isEmpty(nome)) {
			return "redirect:/defeito";
		}
		
		String cap = nome.substring(0, 1).toUpperCase() + nome.substring(1);
		
		Defeito defeitoCheck = defeitoService.getDefeitoFirstResultByName(cap);
		if(defeitoCheck == null) {
			Defeito defeito = new Defeito();
			defeito.setNome(cap);
			defeitoService.cadastrarDefeito(defeito);
			
			LOGGER.info("Fim do método @Post salvarDefeito");
			return "cadastroconcluido";
		}else {
			return "redirect:/defeito";
		}
		
		
	}
	
	@RequestMapping(value="/checkname", method=RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody 
	public ResponseEntity<Object> checkDefeitosName(@RequestParam(required = false) String name) {
		LOGGER.info("Inicio do método @Get checkDefeitosName");
		
		String cap = name.substring(0, 1).toUpperCase() + name.substring(1);
		
		Defeito defeito = defeitoService.getDefeitoFirstResultByName(cap);
		
		if(defeito == null) {
			LOGGER.info("Fim do método @Get checkDefeitosName");
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}else {
			LOGGER.info("Fim do método @Get checkDefeitosName");
			return new ResponseEntity<>(HttpStatus.OK);
		}
	}
	
	
}
