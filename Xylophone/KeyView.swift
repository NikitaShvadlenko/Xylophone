import UIKit

class KeyView: UIView {

    var sound: Sound?

    private lazy var button: UIButton = {
        let button = UIButton()
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureView() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        button.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}

extension KeyView {
    public func configureButton(with sound: Sound, image: UIImage) {
        self.sound = sound
        button.setBackgroundImage(image, for: .normal)
    }
}

enum Sound {
    case aNote
    case bNote
    case cNote
    case dNote
    case eNote
    case fNote
    case gNote
}
