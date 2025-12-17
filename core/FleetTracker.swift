class FleetTracker { 

  private var totalDelivery: Int = 0 
  private var spentFuelTotal: Double = 0.0 

  static let shared = FleetTracker() 
  
  private init() {} 

  func registerDelivery(distance: Double, consumption: Double) { 
    totalDelivery += 1
    spentFuelTotal += consumption
    print("Entrega registrada! Total acumulado: \(totalDelivery) entregas e \(spentFuelTotal)L de combustível.")
    }
  }


FleetTracker.shared.registerDelivery(distance: 10.0, consumption: 25.0)