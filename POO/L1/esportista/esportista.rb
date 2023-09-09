class Esportista
    def initialize(nome)
        @nome = nome
    end

    def competir
        puts "#{@nome} está participando de uma competição"
    end
end

class JogadorDeFutebol < Esportista
    def initialize(nome, posicao)
        super(nome)
        @posicao = posicao
    end

    def correr
        puts "#{@nome} está correndo atrás da bola, sou o #{@posicao}"
    end
end

class Maratonista < Esportista
    def initialize(nome, numero_corrida)
        super(nome)
        @numero_corrida = numero_corrida
    end
    
    def correr
        puts "#{@nome} está percorrendo o circuito com a camisa #{@numero_corrida}"
    end
end

def main
    diogo = Esportista.new("Diogo")
    diogo.competir

    costa = JogadorDeFutebol.new("Costa", 9)
    costa.competir
    costa.correr

    enzo = Maratonista.new("Enzo", 151)
    enzo.competir
    enzo.correr

end

main()
