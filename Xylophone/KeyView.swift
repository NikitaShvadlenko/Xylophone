import UIKit

class KeyView: UIView {

    private var sound: Sound?

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

    private func configureView() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        button.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

    private func configureButtonView(with sound: Sound) {
        switch sound {
        case .aNote:
            configureButtonView(title: L10n.aNote, color: .blue)
        case .bNote:
            configureButtonView(title: L10n.bNote, color: .purple)
        case .cNote:
            configureButtonView(title: L10n.cNote, color: .red)
        case .dNote:
            configureButtonView(title: L10n.dNote, color: .orange)
        case .eNote:
            configureButtonView(title: L10n.eNote, color: .yellow)
        case .fNote:
            configureButtonView(title: L10n.fNote, color: .green)
        case .gNote:
            configureButtonView(title: L10n.gNote, color: .systemBlue)
        }
    }

    private func configureButtonView (title: String, color: UIColor) {
        button.setTitle(title, for: .normal)
        button.backgroundColor = color
    }
}

extension KeyView {
    public func configureButton(with sound: Sound) {
        self.sound = sound
        configureButtonView(with: sound)
    }
}

public enum Sound {
    case aNote
    case bNote
    case cNote
    case dNote
    case eNote
    case fNote
    case gNote
}
