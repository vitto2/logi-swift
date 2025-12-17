class FleetTracker { 

  private let totalEntregas: Int
  private let combustivelGastoTotal: Double

  let shared = FleetTracker()
  
  private init() {}

  func registrarEntrega(distancia: Double, consumo: Double) { 
    totalEntregas += 1

    let combustivelDestaEntrega = distancia / consumo
    combustivelGastoTotal += combustivelDestaEntrega

    print("Entrega registrada! Total acumulado: \(totalEntregas) entregas e \(combustivelGastoTotal)L de combustível.")
    }
  }
}