import Earthquake

class TsunamiController {

    private let _earthquake: EarthquakeController

	init? () {


		guard let earthquake = EarthquakeController() else {
            return nil
        }
        _earthquake = earthquake
   }

}
