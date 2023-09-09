class Produto
    attr_reader :nome, :preco
    def initialize(nome, preco)
        @nome = nome
        @preco = preco
    end
end