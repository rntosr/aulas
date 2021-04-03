package Associação;

/**
 *
 * @author RenatoSR
 */
public class Colaborador extends Pessoas{
    
    String cargo_funcao;

    public Colaborador(String cargo_funcao, int id, String nome, String endereco, int numero, int cep, String bairro, String uf, float cpf_cnpj) {
        super(id, nome, endereco, numero, cep, bairro, uf, cpf_cnpj);
        this.cargo_funcao = cargo_funcao;
    }
    
}
