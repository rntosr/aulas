
package Associação;

/**
 *
 * @author RenatoSR
 */
public class Associados extends Pessoas{

    String situacao;
    int numero_associado;

    public Associados(String situacao, int numero_associado, int id, String nome, String endereco, int numero, int cep, String bairro, String uf, float cpf_cnpj) {
        super(id, nome, endereco, numero, cep, bairro, uf, cpf_cnpj);
        this.situacao = situacao;
        this.numero_associado = numero_associado;
    }
    
}
