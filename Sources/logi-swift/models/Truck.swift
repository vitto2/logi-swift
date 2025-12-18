class Truck: Vehicle { 

  private let axes: Int 

    init(axes: Int, loadCapacity: Double) {
    self.axes = axes
    super.init(loadCapacity: loadCapacity)
  }

  override func finish(distance: Double) {
    let consumptionDelivery = 50.0
    FleetTracker.shared.registerDelivery(distance: distance, consumption: consumptionDelivery)
    super.prepareToDelivery()
  }
}


