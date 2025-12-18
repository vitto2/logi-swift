protocol finishDelivery { 
    func finish(distance: Double)
}

class Vehicle: finishDelivery { 

  private let id: String 
  private let loadCapacity: Double 
  private var inRoute: Bool = false


  init(loadCapacity: Double) {
      let idGenerate = Int.random(in: 1000...2000)
      self.loadCapacity = loadCapacity
      self.id = String(idGenerate)
  }


  func showInfos() { 
    print("ID: \(self.id) | Load capacity: \(self.loadCapacity) | inRoute: \(self.inRoute)")
  }

  func finish(distance: Double) {
      fatalError("Implemente o método finish")
  }

  func prepareToDelivery() { 
   if inRoute { 
      print("Viagem finalizada com sucesso!")
       self.inRoute = false
      return
   } else {
      self.inRoute = true
      print("Viagem iniciada!")
   }
  }
}
