class Corsa{
  var property color 
  method capacidad() = 4
  method velocidadMaxima() = 150
  method peso() = 1300
}


class Kwid{
  var property tieneTanqueAdicional
  method capacidad() = if(tieneTanqueAdicional) 3 else 4
  method velocidadMaxima() = if(tieneTanqueAdicional) 120 else 110
  method peso() = if(tieneTanqueAdicional) 1350 else 1200
  method color() = "azul"
}

object trafic{
  var property interior = comodo
  var property motor = pulenta
  method capacidad() = interior.capacidad()
  method velocidadMaxima() = motor.velocidadMaxima()
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = "blanco"
}

object comodo{
  method capacidad() = 5
  method peso() = 700
}

object popular{
  method capacidad() = 12
  method peso() = 1000
}

object pulenta{
  method peso() = 800
  method velocidadMaxima() = 130
}

object bataton{
  method peso() = 500
  method velocidadMaxima() = 80
}

object dependenciaDeportes{
  const property flota = []
}

class Especial{
  const property peso
  var property velocidadMaxima 
  var property color
  var property capacidad  
}