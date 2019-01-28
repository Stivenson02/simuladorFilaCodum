def generarUsuarios cantidad
    arreglo = Array.new(cantidad)
    arreglo.length.times do |el| 
        arreglo[el] = Random.rand(97..122).chr	
    end
    return arreglo
end
