require "./lib/picas.rb"

describe Picas do
    it "comparar si el primer digito ingresado es igual al primer digito adivina es igual" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.comparar 5,5
        #assert
        expect(resultado).to eq "GANASTE"
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
        expect(resultado).to eq "GANASTE"
    end
    
    it "comparar si los 2 digitos ingresado solo uno es fija" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.comparar 26,25
        #assert
        expect(resultado).to eq "Fijas - 1 v Picas - 0"
    end
    
    it "comparar si los 4 digitos ingresado solo uno es fija y una pica" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.comparar 4367,2345
        #assert
        expect(resultado).to eq "Fijas - 1 v Picas - 1"
    end    
 
     it "comparar si se gano" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.comparar 4367,4367
        #assert
        expect(resultado).to eq "GANASTE"
    end  
    
     it "Validar que se supero el numero de intentos" do
        #arrage
        picas = Picas.new
        #act
        resultado = picas.validar 5
        #assert
        expect(resultado).to eq true
    end  
    
end