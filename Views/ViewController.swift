import UIKit

public class ViewController : UIViewController {

    private let label = UILabel()

    public override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray

        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.textColor = .black
    }

    public override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        let frame = view.frame
        label.text = "width: \(frame.width), height: \(frame.height)"
    }
}

