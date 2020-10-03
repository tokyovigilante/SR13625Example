import Dispatch
import Earthquake
import Foundation

let tsunami: TsunamiController

guard let tsunamiController = TsunamiController() else {
    exit(-1)
}

signal(SIGINT) { _ in
	exit(0)
}

tsunami = tsunamiController

dispatchMain()
