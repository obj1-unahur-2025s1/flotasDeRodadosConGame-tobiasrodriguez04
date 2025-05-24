class Dependencia{
    const flota = []
    var property empleados
    method agregarAFlota(unRodado){
        flota.add(unRodado)
    }
    method quitarDeFlota(){
        flota.remove()
    }
    method pesoTotalFlota() = flota.sum({r=> r.peso()})
    
    method estaBienEquipada() = 
        self.tieneAlMenosRodados(3) && self.todosVanAlMenosA(100)
    
    method tieneAlMenosRodados(cantidad) =
        flota.size() >= cantidad
    method todosVanAlMenosA(velocidad) =
        flota.all({x=> x.velocidadMaxima() > velocidad})
    method capacidadTotalEnColor(color) = self.rodadosDelColor(color).sum({r=> r.capacidad()})
    method rodadosDelColor(color) = flota.filter({r=> r.color() == color})
    method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()
    method rodadoMasRapido() = flota.max({r=> r.velocidadMaxima()})
    method capacidadFaltante() = 0.max(empleados - self.capacidadTotalFlota())
    method capacidadTotalFlota() = flota.sum({r=> r.capacidad()})
    method esGrande() = empleados >= 40 && self.tieneAlMenosRodados(5)
    }