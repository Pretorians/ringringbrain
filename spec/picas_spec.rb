require "./lib/picas.rb"

describe Picas do
    it "comparar si el primer digito ingresado es igual al primer digito adivina es igual" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.comparar 5,5
        #assert
        expect(resultado).to eq "Fijas - 1 v Picas - 0"
    end
    
    it "comparar si el primer digito ingresado es diferente al primer digito adivina es igual" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.comparar 4,5
        #assert
        expect(resultado).to eq "Fijas - 0 v Picas - 0"
    end
    
    it "comparar si los 2 digitos ingresado es igual al adivinar" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.comparar 25,25
        #assert
        expect(resultado).to eq "Fijas - 2 v Picas - 0"
    end
    
    it "comparar si los 2 digitos ingresado solo uno es fija" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.comparar 26,25
        #assert
        expect(resultado).to eq "Fijas - 1 v Picas - 0"
    end
    
    it "comparar si los 2 digitos ingresado solo uno es fija" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.comparar 26,25
        #assert
        expect(resultado).to eq "Fijas - 1 v Picas - 0"
    end    
    
    
end