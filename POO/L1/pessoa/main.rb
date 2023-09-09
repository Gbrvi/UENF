class Pessoa
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def exibir_dados
        puts "Nome: #{@nome} | Idade: #{@idade}"
    end
end


def main()
    diogo = Pessoa.new("Diogo", 18)
    diogo.exibir_dados
end

main()