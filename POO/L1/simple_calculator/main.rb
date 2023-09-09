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
            return @num1.to_f / @num2.to_f
        else
            puts "Não pode dividir por zero!!!"
        end
    end

    def subtrair
        @num1 - @num2
    end

    def multiplicar
        @num1 * num2
    end
end

def main()

    print("n1: ")
    n1 = gets.to_i
    print("n2: ")
    n2 = gets.to_i
    values = Calculadora.new(n1, n2)

    puts "#{n1} + #{n2} é #{values.somar}"
    puts "#{n1} - #{n2} é: #{values.subtrair}"
    puts "#{n1} * #{n2} é: #{values.multiplicar}"
    puts "#{n1} / #{n2} é: #{values.dividir}"
end
main()

