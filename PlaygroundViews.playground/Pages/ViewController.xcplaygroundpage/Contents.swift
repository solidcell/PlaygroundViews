import UIKit
import PlaygroundSupport
import Views

let viewController = SafeAreaViewController()
viewController.view.backgroundColor = .white

show(viewController: viewController,
     device: .iphone_x,
     orientation: .landscape)
