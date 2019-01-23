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
    rowlist()
    caja()
    print "FILAS POR CAJA"
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
    if $caja1.length <= 0
      $caja1.push element
    end
    if $caja2.length <= 0
      $caja1.push element
    end
    if $caja3.length <= 0
      $caja1.push element
    end
    if $caja4.length <= 0
      $caja1.push element
    end
    attend();
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
      caja();
    end
  end
end
#init
object = Simulator.new()
object.simulator
gets()
