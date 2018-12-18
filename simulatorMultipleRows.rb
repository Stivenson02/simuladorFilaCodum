class Simulator
  $users = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t']
  $caja1=[]
  $caja2=[]
  $caja3=[]
  $caja4=[]
  $time=0
  def initialize()
  end
  def simulator
    multipleRows()
    print "FILAS POR CAJA"
    printCash()
    print "SIMULACION DE ATENDER CADA CAJA"
    attend()
    puts "TIEMPO DE ATENCION PARA 20 PERSONAS CON MUCHAS FILAS  "
    print $time
    print " MINUTOS"
  end
  def multipleRows()
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
  end
  def printCash()
    if $caja1.length > 0
      puts "caja 1"
      puts $caja1
      puts " "
    end
    if $caja2.length > 0
      puts "caja 2"
      puts $caja2
      puts " "
    end
    if $caja3.length > 0
      puts "caja 3"
      puts $caja3
      puts " "
    end
    if $caja4.length > 0
      puts "caja 4"
      puts $caja4
      puts " "
    end
  end
  def attend()
    i=1
    while i <= $users.length
      $time=$time + rand(1..4)
      cajaAtendida = rand(1..4)
      if cajaAtendida == 1
        if $caja1.length > 0
          $caja1.delete_at(0)
          i=i+1
        end
      elsif cajaAtendida == 2
        if $caja2.length > 0
          $caja2.delete_at(0)
          i=i+1
        end
      elsif cajaAtendida == 3
        if $caja3.length > 0
          $caja3.delete_at(0)
          i=i+1
        end
      elsif cajaAtendida == 4
        if $caja4.length > 0
          $caja4.delete_at(0)
          i=i+1
        end
      end
      printCash()
    end
  end
end
#init
object = Simulator.new()
object.simulator
gets()
