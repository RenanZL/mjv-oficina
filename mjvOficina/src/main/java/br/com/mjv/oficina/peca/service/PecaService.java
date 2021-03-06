package br.com.mjv.oficina.peca.service;

import java.util.List;

import br.com.mjv.oficina.defeito.model.Defeito;
import br.com.mjv.oficina.peca.model.Peca;

public interface PecaService {
	
	/**
	 * Retorna uma lista de peças
	 * @return List<{@link Peca}>
	 */
	List<Peca> getAllPecas();
	
	/**
	 * Cadastra uma nova peça
	 * @param peca
	 */
	Integer cadastrarPeca(Peca peca);
	
	/**
	 * Retorna uma peça de acordo com seu nome exato
	 * @return
	 */
	Peca getPecaFirstResultByName(String name);
	
	/**
	 * Insere uma lista de defeitos na tabela TB_DEFEITO_PECA
	 * @params list, idPeca 
	 */
	void linkarDefeitos(List<Defeito> list, Integer idPeca);
	
	/**
	 * Retorna uma peça de acordo com seu id
	 * @return {@link Peca}
	 */
	Peca getById(Integer id);

}
