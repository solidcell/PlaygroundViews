import UIKit

public class SafeAreaViewController : UIViewController {

    private let topAndBottomColor: UIColor
    private let leftAndRightColor: UIColor
    private let safeAreaColor: UIColor

    public init(opacity: CGFloat = 0.2) {
        topAndBottomColor = UIColor.red.withAlphaComponent(opacity)
        leftAndRightColor = UIColor.yellow.withAlphaComponent(opacity)
        safeAreaColor = UIColor.blue.withAlphaComponent(opacity)
        super.init(nibName: nil, bundle: nil)
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private let topSafeAreaInsetView = UIView()
    private let bottomSafeAreaInsetView = UIView()
    private let leftSafeAreaInsetView = UIView()
    private let rightSafeAreaInsetView = UIView()

    private let safeAreaView = UIView()

    public override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(topSafeAreaInsetView)
        topSafeAreaInsetView.translatesAutoresizingMaskIntoConstraints = false
        topSafeAreaInsetView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        topSafeAreaInsetView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topSafeAreaInsetView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topSafeAreaInsetView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        topSafeAreaInsetView.backgroundColor = topAndBottomColor

        view.addSubview(bottomSafeAreaInsetView)
        bottomSafeAreaInsetView.translatesAutoresizingMaskIntoConstraints = false
        bottomSafeAreaInsetView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        bottomSafeAreaInsetView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        bottomSafeAreaInsetView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        bottomSafeAreaInsetView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomSafeAreaInsetView.backgroundColor = topAndBottomColor

        view.addSubview(leftSafeAreaInsetView)
        leftSafeAreaInsetView.translatesAutoresizingMaskIntoConstraints = false
        leftSafeAreaInsetView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        leftSafeAreaInsetView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        leftSafeAreaInsetView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        leftSafeAreaInsetView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        leftSafeAreaInsetView.backgroundColor = leftAndRightColor

        view.addSubview(rightSafeAreaInsetView)
        rightSafeAreaInsetView.translatesAutoresizingMaskIntoConstraints = false
        rightSafeAreaInsetView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        rightSafeAreaInsetView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        rightSafeAreaInsetView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        rightSafeAreaInsetView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        rightSafeAreaInsetView.backgroundColor = leftAndRightColor

        view.addSubview(safeAreaView)
        safeAreaView.translatesAutoresizingMaskIntoConstraints = false
        safeAreaView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        safeAreaView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        safeAreaView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        safeAreaView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        safeAreaView.backgroundColor = safeAreaColor
    }
}
