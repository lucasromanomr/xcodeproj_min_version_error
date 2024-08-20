import UIKit

public final class LabelView: UIView {
//final class LabelView: UIView {
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, World!"
        return label
    }()

    public init() {
//    init {
        super.init(frame: .zero)
        setup()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension LabelView {
    func setup() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
    }
    
    func updateText() {
        let manager = LabelManager()
        titleLabel.text = manager.getTextForLabelView()
    }
}
