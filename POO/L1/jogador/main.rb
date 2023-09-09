require 'colorize'

class Jogador
    # Criando get metodos
    attr_reader :primeiro_nome, :ultimo_nome, :numero_camisa, :posicao
    def initialize(primeiro_nome, ultimo_nome, numero_camisa)
        @primeiro_nome = primeiro_nome
        @ultimo_nome = ultimo_nome
        @numero_camisa = numero_camisa
        @posicao = posicao()
    end

    # Metodo que imprime o nome
    def nome
        print "#{@ultimo_nome} #{@primeiro_nome}".capitalize!
    end
    # Metodo para determinar posicao
    def posicao
        case @numero_camisa
        when 1..5
            pos = "Zagueiro"
        when 6..10
            pos = "Meio de campo"
        else
            pos = "Atacante"
        end

        @posicao = pos
    end

    #Metodo para exibir dados
    def exibir_dados
        puts "----------------------"
        print "#{nome()} | Camisa: #{@numero_camisa} | #{@posicao} \n"
        puts "----------------------"
    end
end

class Time
    attr_reader :nome_time, :jogadores_time
    def initialize(nome_time)
        @nome_time = nome_time
        @jogadores_time = []
    end

    def adicionar_jogador(jogador)
        @jogadores_time << jogador
    end

    def exibir_informacoes
        puts "--------------------"
        puts "#{@nome_time}".upcase!.red
        puts "--------------------"
        @jogadores_time.each_with_index do |jogador, index|
            puts "Jogador #{index + 1}".yellow
            jogador.exibir_dados()
        end
    end
end

# Funcao para criar jogadores
def criar_jogador(nome=nil, ultimo_nome=nil, camisa=nil)
    # Verificacao para criar jogadores caso os dados nao forem passados na chamada da funcao
    if nome.nil? && ultimo_nome.nil? && camisa.nil?

        #Pegar dados com o usuario
        puts 'Digite o nome'
        nome = gets.chomp.strip # Chomp para eliminar \n e strip para remover espaços em branco no final
        puts 'Ultimo nome'
        ultimo_nome = gets.chomp.strip
        # Loop para obter camisa apenas maior que 0

        while true
            puts 'Informe a camisa: '
            camisa = gets.to_i
            if camisa > 0
                break    
            else
                puts "ERRO, precisa ser maior que 0"
            end
        end
    end

    # Cria jogador e retorna
    jogador = Jogador.new(nome, ultimo_nome, camisa)
    return jogador
end

def main
    # Lista de jogadores
    fluminense = Time.new("Fluminense")
    botafogo = Time.new("Botafogo")

    # Cria jogadores do fluminense e adiciona no time
    for i in 1..2
        if i == 1
            puts "Jogador do FLUMINENSE"
        end
        jogador = criar_jogador()
        fluminense.adicionar_jogador(jogador)
    end

    # Cria jogadores do botafogo e adiciona no time
    for i in 1..2
        if i == 1
            puts "Jogador do BOTAFOGO"
        end
        jogador = criar_jogador()
        botafogo.adicionar_jogador(jogador)
    end
    # Cria um jogador automatico sem perguntar ao usuario os dados
    cano = criar_jogador("Cano", "German", "87")

    fluminense.adicionar_jogador(cano)

    #Exibe dados de cada time

    fluminense.exibir_informacoes()
    botafogo.exibir_informacoes()
end

main()