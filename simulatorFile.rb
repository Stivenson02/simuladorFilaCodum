class Simulator
  $users = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t']
  $caja1=[]
  $caja2=[]
  $caja3=[]
  $caja4=[]
  def initialize()
  end
  def simulator
    $users.each_with_index do |element, index|
      #sleep rand(1..4)
      alterfile= rand(1..4)
      if alterfile == 1
        $caja1.push element
      elsif alterfile == 2
        $caja2.push element
      elsif alterfile == 3
        $caja3.push element
      elsif alterfile == 4
        $caja4.push element
      end
    end
    puts "fila 1"
    puts $caja1
    puts "caja 1"
    puts " "
    puts "fila 2"
    puts $caja2
    puts "caja 2"
    puts " "
    puts "fila 3"
    puts $caja3
    puts "caja 3"
    puts " "
    puts "fila 4"
    puts $caja4
    puts "caja 4"
    puts " "

    cajaAtendida=1
    if cajaAtendida == 1
      if $caja1.length > 0
        $caja1.delete_at(0)
        puts $caja1
      end
    elsif cajaAtendida == 2
      if $caja2.length > 0
        $caja2.delete_at(0)
      end
    elsif cajaAtendida == 3
      if $caja3.length > 0
        $caja3.delete_at(0)
      end
    elsif cajaAtendida == 4
      if $caja4.length > 0
        $caja4.delete_at(0)
      end
    end
  end
end
#init
object = Simulator.new()
object.simulator
gets()
