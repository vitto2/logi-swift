protocol finishDelivery { 
  func finish() 
}

class Vehicle { 

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
}

