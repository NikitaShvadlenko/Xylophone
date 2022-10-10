import UIKit
import SnapKit
protocol KeyViewDelegate: AnyObject {
    func keyView(
        _ keyView: KeyView,
        didPressButtonFor sound: Sound
    )
}

class KeyView: UIView {

    weak var delegate: KeyViewDelegate?
    private var sound: Sound

    private lazy var button: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(pressedKeyButton), for: .touchUpInside)
        button.titleLabel?.font = .boldSystemFont(ofSize: 50)
        return button
    }()

    init(sound: Sound) {
        self.sound = sound
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        configureView()
        configureButtonView(with: sound)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureView() {
        addSubview(button)
        button.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
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
            configureButtonView(title: L10n.eNote, color: .systemYellow)
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

    @objc
    private func pressedKeyButton() {
        delegate?.keyView(self, didPressButtonFor: sound)
    }
}
