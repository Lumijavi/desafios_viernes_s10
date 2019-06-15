module Test
  def result
    promedio = (@nota1+@nota2)/2.0
    if promedio > 4
      puts "Promedio final #{promedio}, Estudiante #{@nombre} aprobado"
    else
      puts "Promedio final #{promedio}, Estudiante #{@nombre} reprobado"
    end
  end
end

module Attendance
  def student_quantity
    puts "El total de asistentes fue #{Student.asistencia}"
  end
end

class Student
  include Test
  extend Attendance

  @@quantity = 0

  def initialize(nombre="Juan", nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end

  def self.asistencia
    @@quantity
  end

end


10.times do |i|
  alumnos = Student.new("Juan #{i+1}",rand(1..7),rand(1..7)).result
end

Student.student_quantity
