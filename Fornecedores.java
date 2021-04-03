
package Associação;

/**
 *
 * @author RenatoSR
 */
public class Fornecedores extends Pessoas{

    String nome_fantasia;
    String website;
    
    public Fornecedores(String nome_fantasia, String website, int id, String nome, String endereco, int numero, int cep, String bairro, String uf, float cpf_cnpj) {
        super(id, nome, endereco, numero, cep, bairro, uf, cpf_cnpj);
        this.nome_fantasia = nome_fantasia;
        this.website = website;
    }
    
}
