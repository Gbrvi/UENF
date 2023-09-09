require_relative 'produto'

class Mercado
    attr_reader :produto
    def initialize(produto)
        @produto = produto
    end

    def comprar
        puts "Voce comprou #{@produto.nome} no valor de #{@produto.preco}"
    end

end