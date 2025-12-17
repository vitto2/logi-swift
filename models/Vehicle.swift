class Vehicle {

  private let id: String 
  private let loadCapacity: Double
  private let inRoute: Bool
  
  init(loadCapacity: Double, inRoute: Bool) {
      let idGenerate = Int.random(in: 1000...2000)

      self.loadCapacity = loadCapacity
      self.inRoute = inRoute
      self.id = String(idGenerate)
  }
  

  func prepareForDelivery() { 

    guard let inRoute else { 
      print("O veículo ainda não está em rota. ")
      return
    }

    print("O veículo está em rota.")
  }

  protocol finishDelivery {
      func finish()
  }
}