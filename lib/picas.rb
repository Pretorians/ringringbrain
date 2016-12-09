class Picas

    def initialized
        @numaleatorio=0
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