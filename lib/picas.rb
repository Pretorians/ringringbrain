class Picas

    @numeroingresado = 0
    @numeroadivinar=0
    
    INTENTOS=9
    
    def initialized 
    end
    
    def comparar numeingre, numeadiv, cantInt=1
        @numeroingresado = numeingre
        @numeroadivinar = numeadiv
        
        arrIng = numeingre.to_s.split ""
        arrAdv = numeadiv.to_s.split ""
        
        picas=0
        fijas=0
        conting=0
        contadv=0
        

        while contadv < arrAdv.size do
            digadv = arrAdv[contadv]
            while conting < arrIng.size do
                diging = arrIng[conting]
                if digadv == diging && contadv == conting
                    fijas = fijas + 1
                    break;
                elsif digadv == diging
                    picas = picas + 1
                    break;
                end     
                conting = conting + 1
            end
            contadv = contadv + 1
            conting = 0
        end
        
        puts "Picas #{ picas }"
        puts "Fijas #{ picas }"
        
        puts "conting #{ conting }"
        puts "contadv #{ contadv }"        
    
        result = ""
        if INTENTOS == cantInt 
            result = "|TERMINASTE"
        end
        if fijas == arrAdv.size
            return "GANASTE" + result
        else
            return "Fijas - #{ fijas } v Picas - #{ picas }" + result
        end    
        
    
        
    end   
    
    def numero
        @numaleatorio
    end
    
    def aleatorio
      numero = %w{ 1 2 3 4 5 6 7 8 9}
     
      num = numero.length
      @numaleatorio = rand(num)
      
      puts @numeroaleatorio
    end
    

    
end