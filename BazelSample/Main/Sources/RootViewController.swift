import DrinkDiscoveryInterface
import UIKit
import ObjcModule

final class RootViewController: UINavigationController {
    private lazy var goToObjcModuleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to Objc Module", for: .normal)
        button.addTarget(self, action: #selector(goToObjcModule), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(drinkDiscoveryDisplayLogic: DrinkDiscoveryDisplayLogic) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = [drinkDiscoveryDisplayLogic]
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(goToObjcModuleButton)
        NSLayoutConstraint.activate([
            goToObjcModuleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToObjcModuleButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            goToObjcModuleButton.heightAnchor.constraint(equalToConstant: 44),
            goToObjcModuleButton.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
            goToObjcModuleButton.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func goToObjcModuleViewController() {
        let viewController = ObjcModuleViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        present(navigationController, animated: true, completion: nil)
    }
    
    @objc
    func goToObjcModule() {
        goToObjcModuleViewController()
    }
}
