package br.com.mjv.oficina.veiculo.dao;

import java.util.List;

import br.com.mjv.oficina.peca.model.Peca;
import br.com.mjv.oficina.veiculo.model.Veiculo;

public interface VeiculoDao {

	/**
	 * Retorna uma lista de peças
	 * @return List<{@link Veiculo}>
	 */
	List<Veiculo> getAllVeiculos();
	
	/**
	 * Cadastra uma nova peça
	 * @param peca
	 */
	Integer cadastrarVeiculo(Veiculo veiculo);
	
	/**
	 * Retorna uma peça de acordo com seu nome exato
	 * @return
	 */
	Veiculo getVeiculoFirstResultByName(String name);
	
	/**
	 * Insere uma lista de defeitos na tabela TB_DEFEITO_PECA
	 * @params list, idPeca 
	 */
	void linkarPecas(List<Peca> list, Integer idVeiculo);
}
