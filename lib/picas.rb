class Picas
    
    rango
    
    def initialized
        @numaleatorio=0
    end
    
    def carta_aleatoria
      numero = %w{ 1 2 3 4 5 6 7 8 9}
     
      #Quiero una carta aleatoria que tiene:
      #  -un palo aleatorio
      #  -un número aleatorio
     
      #palo aleatorio
      num = palos.length
      palo_aleat = rand(num)
     
      #numero aleatorio
      numaleatorio = rand(numero.length)
     
      puts numero[num_aleat] + ' de ' + palos[palo_aleat] 
    end