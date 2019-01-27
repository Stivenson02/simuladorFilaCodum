require_relative "SimulatorMultipleRows"
require_relative "SimulatorOneRows"

system "clear" or system "cls"
puts "--- Bienvenido al simulador de filas ---",
"  Para empezar digite el tipo de fila a simular",
"  1. para fila unica ",
"  2. para filas multiples",
"  seguido de un espacio digite uno a uno los demas parametros",
"  numero de cajas",
"  tiempo de las simulación en minutos (iteraciones).",
"  delta de tiempo deseado para cada iteración",
"          ej: 1 5 10 1"

input = gets.chomp
filaType, *arg = input.downcase.split /\s/
cajas = arg[0].to_i
time = arg[1].to_i
delta_time = arg[2].to_i

case filaType
  when "1"
    simulation = SimulatorOneRows.new(cajas, time, delta_time)
  when "2"
    simulation = SimulatorMultipleRows.new(cajas, time, delta_time)
end
