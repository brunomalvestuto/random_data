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

    def cnpj
      n = Array.new(8) {rand(10)} + [0, 0, 0, 1]
      d1 = n[11]*2+n[10]*3+n[9]*4+n[8]*5+n[7]*6+n[6]*7+n[5]*8+n[4]*9+n[3]*2+n[2]*3+n[1]*4+n[0]*5
      d1 = 11 - (d1 % 11)
      d1 = 0 if d1 >= 10

      n << d1

 	    d2 = n[12]*2+n[11]*3+n[10]*4+n[9]*5+n[8]*6+n[7]*7+n[6]*8+n[5]*9+n[4]*2+n[3]*3+n[2]*4+n[1]*5+n[0]*6
      d2 = 11 - (d2 % 11)
      d2 = 0 if d2 >= 10

      n << d2
      n.join
    end

    def formated_cnpj
      cnpj = cnpj()
      "#{cnpj[0..1]}.#{cnpj[2..4]}.#{cnpj[5..7]}/#{cnpj[8..11]}-#{cnpj[12...14]}"
    end

    def formated_cpf
      cpf = cpf()
      "#{cpf[0..2]}.#{cpf[3..5]}.#{cpf[6..8]}-#{cpf[9..10]}"
    end
  end
end
