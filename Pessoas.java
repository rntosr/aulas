package Associação;

/**
 *
 * @author RenatoSR
 */
public class Pessoas {
    
    int id;
    String nome;
    String endereco;
    int numero;
    int cep;
    String bairro;
    String uf;
    float cpf_cnpj;
    
   public Pessoas(int id, String nome, String endereco, int numero, int cep, String bairro, String uf, float cpf_cnpj) {
        this.id = id;
        this.nome = nome;
        this.endereco = endereco;
        this.numero = numero;
        this.cep = cep;
        this.bairro = bairro;
        this.uf = uf;
        this.cpf_cnpj = cpf_cnpj;
    }
    
}
