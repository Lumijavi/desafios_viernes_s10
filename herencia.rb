class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
    puts "El motor se ha encendido!"
  end
end

class Car < Vehicle
  @@instances = 0
  def initialize()
    @@instances += 1
  end

  def self.get_number_of_instances
    @@instances
  end

end


10.times do |i|
  Car.new.engine_start
end

print Car.get_number_of_instances




# Crear una clase Car que herede de Vehicle

# El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un contador de instancias de Car.

# Crear un método de clase en Car que devuelva la cantidad de instancias.

# El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.

# Instanciar 10 Cars.

# Consultar la cantidad de instancias generadas de Car mediante el método de clase creado.
