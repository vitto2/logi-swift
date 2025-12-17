class FleetTracker { 

  private var totalDelivery: Int = 0 //Propriedade que acumula o total de entregas feitas
  private var spentFuelTotal: Double = 0.0 //Propriedade que acumula o total de combustível gasto

  static let shared = FleetTracker() // Instancia única compartilhada por todo sistema
  
  private init() {} // inicializador privado que impedirá que outras instancias sejam criadas 

  //método responsável por atualizar as métricas globais das entregas
  func registerDelivery(distance: Double, consumption: Double) { 
    totalDelivery += 1
    spentFuelTotal += consumption
    print("Entrega registrada! Total acumulado: \(totalDelivery) entregas e \(spentFuelTotal)L de combustível.")
    }
  }

