class Simulator
  $users = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t']
  $row=[]
  $caja1=[]
  $caja2=[]
  $caja3=[]
  $caja4=[]
  $time=0
  def initialize()
  end
  def simulator
    rowlist
    print "FILA"
    print $row
    puts " "
    puts $time
    puts "MINUTOS"
    caja()
    puts "TIEMPO DE ATENCION PARA 20 PERSONAS CON MUCHAS FILAS  "
    print $time
    print " MINUTOS"
  end
  def rowlist()
    $users.each_with_index do |element, index|
      #Cada 1 a 3 minutos llega un cliente a una fila
      $time=$time + rand(1..3)
      $row.push element
    end
  end
  def caja()
    #al ser una sola fila solo ahi una sola persona por caja
    $users.each_with_index do |element, index|
      #Cada 1 a 3 minutos llega un cliente a una fila
      $time=$time + rand(1..3)
      if $caja1.length <= 0
        $caja1.push element
      elsif $caja2.length <= 0
        $caja2.push element
      elsif $caja3.length <= 0
        $caja3.push element
      elsif $caja4.length <= 0
        $caja4.push element
      else
        attend()
      end
    end
  end
  def attend()
    puts "CAJA 1"
    puts $caja1

    puts "CAJA 2"
    puts $caja2

    puts "CAJA 3"
    puts $caja3

    puts "CAJA 4"
    puts $caja4
    if $caja1.length >= 1
      $time=$time + rand(1..4)
        $caja1.delete_at(0)
    end
    if $caja2.length >= 1
      $time=$time + rand(1..4)
        $caja2.delete_at(0)
    end
    if $caja3.length >= 1
      $time=$time + rand(1..4)
        $caja3.delete_at(0)
    end
    if $caja4.length >= 1
      $time=$time + rand(1..4)
        $caja4.delete_at(0)
    end
    $row.delete_at(0)
  end
end
#init
object = Simulator.new()
object.simulator
gets()
