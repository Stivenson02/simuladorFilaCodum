require_relative "SimulatorMultipleRows"
require_relative "SimulatorOneRows"

system "clear" or system "cls"
puts "--- Bienvenido al simulador de filas ---",
"  Para empezar digite el tipo de fila a simular",
"     1. para fila unica ",
"     2. para filas multiples",
"  Seguido de un espacio digite uno a uno los demas parametros",
"     numero de cajas",
"     tiempo de las simulación en minutos (iteraciones).",
"     delta de tiempo deseado para cada iteración",
"          ej: 1 5 10 1"

input = gets.chomp
filaType, *arg = input.downcase.split /\s/
num_cajas = arg[0].to_i
time_iteration = arg[1].to_i
delta_duration = arg[2].to_i

case filaType
  when "1"
    simulacion = SimulatorOneRows.new(4, 30, 0.2) #datos quemado para probar, esta linea se debe cambiar por la siguiente
    # SimulatorOneRows.new(num_cajas, time_iteration, delta_duration)  
    simulacion.SimulatorOneRows
  when "2"
    SimulatorMultipleRows.new(num_cajas, time_iteration, delta_duration)
end
