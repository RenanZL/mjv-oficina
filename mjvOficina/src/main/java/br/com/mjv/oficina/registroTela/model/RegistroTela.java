package br.com.mjv.oficina.registroTela.model;

import br.com.mjv.oficina.defeito.model.Defeito;
import br.com.mjv.oficina.peca.model.Peca;

public class RegistroTela {

	private Integer fkIdProblema;
	private String defeito;
	private String peca;
	
	public Integer getFkIdProblema() {
		return fkIdProblema;
	}
	public void setFkIdProblema(Integer fkIdProblema) {
		this.fkIdProblema = fkIdProblema;
	}
	public String getDefeito() {
		return defeito;
	}
	public void setDefeito(String defeito) {
		this.defeito = defeito;
	}
	public String getPeca() {
		return peca;
	}
	public void setPeca(String peca) {
		this.peca = peca;
	}
	
	
	
	
	
	
}
