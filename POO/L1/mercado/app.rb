require_relative 'mercado'

def main
    p1 = Produto.new("Sabao", 3.10)
    p2 = Produto.new("Nescau", 10.15)
    p3 = Produto.new("Arroz", 7.20)


    superbom = Mercado.new(p2)

    superbom.comprar

end


main()