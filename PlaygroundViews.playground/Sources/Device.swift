import UIKit
import PlaygroundSupport

public enum Device {
    case iphone_4    // 2G, 3G, 3GS, 4, 4s
    case iphone_5    // 5, 5s, 5c, SE
    case iphone_6    // 6, 6s, 7, 8
    case iphone_plus // 6+, 6s+, 7+, 8+
    case iphone_x    // X
    case ipad_mini   // 9.7" Pro, 1, 2, 3, 4, Mini 1/2/3/4, Air 1/2
    case ipad_10_5   // 10.5" Pro
    case ipad_12_9   // 12.9" Pro
}

public enum Orientation {
    case portrait
    case landscape
}

public func show(viewController: UIViewController,
                 device: Device = .iphone_6,
                 orientation: Orientation = .portrait) {

    // https://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions
    let width: CGFloat
    let height: CGFloat
    let userInterfaceIdiom: UIUserInterfaceIdiom

    switch device {
    case .iphone_4:
        width = 320
        height = 480
        userInterfaceIdiom = .phone
    case .iphone_5:
        width = 320
        height = 568
        userInterfaceIdiom = .phone
    case .iphone_6:
        width = 375
        height = 667
        userInterfaceIdiom = .phone
    case .iphone_plus:
        width = 414
        height = 736
        userInterfaceIdiom = .phone
    case .iphone_x:
        width = 375
        height = 812
        userInterfaceIdiom = .phone
    case .ipad_mini:
        width = 768
        height = 1024
        userInterfaceIdiom = .pad
    case .ipad_10_5:
        width = 834
        height = 1112
        userInterfaceIdiom = .pad
    case .ipad_12_9:
        width = 1024
        height = 1366
        userInterfaceIdiom = .pad
    }

    // https://developer.apple.com/ios/human-interface-guidelines/visual-design/adaptivity-and-layout/
    let horizontalSizeClass: UIUserInterfaceSizeClass
    let verticalSizeClass: UIUserInterfaceSizeClass

    switch (device, orientation) {
    case (.iphone_4, .portrait):
        horizontalSizeClass = .compact
        verticalSizeClass = .regular
    case (.iphone_4, .landscape):
        horizontalSizeClass = .compact
        verticalSizeClass = .compact
    case (.iphone_5, .portrait):
        horizontalSizeClass = .compact
        verticalSizeClass = .regular
    case (.iphone_5, .landscape):
        horizontalSizeClass = .compact
        verticalSizeClass = .compact
    case (.iphone_6, .portrait):
        horizontalSizeClass = .compact
        verticalSizeClass = .regular
    case (.iphone_6, .landscape):
        horizontalSizeClass = .compact
        verticalSizeClass = .compact
    case (.iphone_plus, .portrait):
        horizontalSizeClass = .compact
        verticalSizeClass = .regular
    case (.iphone_plus, .landscape):
        horizontalSizeClass = .regular
        verticalSizeClass = .compact
    case (.iphone_x, .portrait):
        horizontalSizeClass = .compact
        verticalSizeClass = .regular
    case (.iphone_x, .landscape):
        horizontalSizeClass = .compact
        verticalSizeClass = .compact
    case (.ipad_mini, .portrait):
        horizontalSizeClass = .regular
        verticalSizeClass = .regular
    case (.ipad_mini, .landscape):
        horizontalSizeClass = .regular
        verticalSizeClass = .regular
    case (.ipad_10_5, .portrait):
        horizontalSizeClass = .regular
        verticalSizeClass = .regular
    case (.ipad_10_5, .landscape):
        horizontalSizeClass = .regular
        verticalSizeClass = .regular
    case (.ipad_12_9, .portrait):
        horizontalSizeClass = .regular
        verticalSizeClass = .regular
    case (.ipad_12_9, .landscape):
        horizontalSizeClass = .regular
        verticalSizeClass = .regular
    }

    let size: CGSize
    switch orientation {
    case .portrait:
        size = .init(width: width, height: height)
    case .landscape:
        size = .init(width: height, height: width)
    }

    let container = UIViewController()
    container.addChildViewController(viewController)
    container.view.addSubview(viewController.view)

    viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

    let frame = CGRect(origin: .zero, size: size)
    container.view.frame = frame
    viewController.view.frame = frame
    container.preferredContentSize = frame.size

    let traits = UITraitCollection(traitsFrom: [
        .init(horizontalSizeClass: horizontalSizeClass),
        .init(verticalSizeClass: verticalSizeClass),
        .init(userInterfaceIdiom: userInterfaceIdiom)])
    container.setOverrideTraitCollection(traits, forChildViewController: viewController)

    PlaygroundPage.current.liveView = container
}
