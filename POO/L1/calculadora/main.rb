class Calculadora
    attr_accessor :num1, :num2
    def initialize(num1, num2)
        @num1 = num1;
        @num2 = num2
    end

    def somar
        @num1 + num2
    end

    def dividir
        if @num2 != 0
            @num1 / @num2
        else
            puts "Não pode dividir por zero"
            return nil
        end
    end

    def subtrair
        @num1 - @num2
    end

    def multiplicar
        @num1 * num2
    end

    def potencia 
        @num1 ** num2
    end

end

class Menu
    def exbir
        puts "-----------------------"
        puts "[1] Adição"
        puts "[2] Subtração"
        puts "[3] Divisão"
        puts "[4] Multiplicação"
        puts "[5] potência"
        puts "[0] Mudar valores"
        puts "[-1] para sair"
        puts "------------------------"
    end
end

# Function made to get values from user

def get_values
    puts "Valor de n1"
    num1 = gets.to_i
    puts "Valor de n2"
    num2 = gets.to_i

    calc = Calculadora.new(num1, num2)
    return calc
end


def main()
    menu = Menu.new()

    calculadora = get_values()

    while true
        menu.exbir()

        resp = gets.to_i
    
        case resp
        when 1
            puts "A soma é: #{calculadora.somar}"
        when 2
            puts "A subtração é: #{calculadora.subtrair}"
        when 3
            puts "A divisão é: #{calculadora.dividir}"
        when 4
            puts "A multiplicação é: #{calculadora.multiplicar}"
        when 5 
            puts "A potência é: #{calculadora.potencia}"
        when -1 
            break
        when 0
            calculadora = get_values()
        else
            puts "Digite um comando valido!!!"
        end

        sleep(1)

    end
end

main()

