class FleetTracker { 

  private let totalDelivery: Int
  private let spentFuelTotal: Double

  let shared = FleetTracker()
  
  private init() {}

  func registrarEntrega(distance: Double, consumption: Double) { 
    totalDelivery += 1

    let fuelDelivery = distance / consumption
    spentFuelTotal += fuelDelivery

    print("Entrega registrada! Total acumulado: \(totalEntregas) entregas e \(combustivelGastoTotal)L de combustível.")
    }
  }
}