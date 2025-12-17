class FleetTracker { 

  private var totalDelivery: Int = 0
  private var spentFuelTotal: Double = 0.0

  static let shared = FleetTracker()
  
  private init() {}

  func registerDelivery(distance: Double, consumption: Double) { 
    totalDelivery += 1 //Soma 1 ao total de entregas feitas

    let fuelDelivery = distance / consumption // calcula o consumo médio de combustível
    
    spentFuelTotal += fuelDelivery //Soma ao total de combustível a quantidade média de combustivel da entrega

    print("Entrega registrada! Total acumulado: \(totalDelivery) entregas e \(spentFuelTotal)L de combustível.")
    }
  }

