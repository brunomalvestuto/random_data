module RandomData

  # Method to create Brazilian CPF number
  module Papers
    def cpf
      numbers = Array.new(9) {rand(10)}
      2.times do
        start = 2
        digit = 0
        for i in start..(numbers.size+1) do
          digit +=  (numbers.reverse[i-start] * i)
        end

        digit = 11 - (digit % 11)
        digit = 0 if digit >= 10

        start += 1
        numbers << digit
      end
      numbers.join
    end

    def formated_cpf
      cpf = cpf()
      "#{cpf[0..2]}.#{cpf[3..5]}.#{cpf[6..8]}-#{cpf[9..10]}"
    end
  end
end
