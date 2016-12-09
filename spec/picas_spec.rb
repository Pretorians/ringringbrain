require "./lib/picas.rb"

describe Picas do
    it "comparar si el primer digito ingresado es igual al primer digito adivina es igual" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.comparar 4,5
        #assert
        expect(resultado).to eq true
    end
end