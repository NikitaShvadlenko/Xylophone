import UIKit

class MainScreenView: UIView {

    private lazy var aNoteView: KeyView = {
        let view = KeyView(sound: Sound.aNote)
        return view
    }()

    private lazy var bNoteView: KeyView = {
        let view = KeyView(sound: Sound.bNote)
        return view
    }()

    private lazy var cNoteView: KeyView = {
        let view = KeyView(sound: Sound.cNote)
        return view
    }()

    private lazy var dNoteView: KeyView = {
        let view = KeyView(sound: Sound.dNote)
        return view
    }()

    private lazy var eNoteView: KeyView = {
        let view = KeyView(sound: Sound.eNote)
        return view
    }()

    private lazy var fNoteView: KeyView = {
        let view = KeyView(sound: Sound.fNote)
        return view
    }()

    private lazy var gNoteView: KeyView = {
        let view = KeyView(sound: Sound.gNote)
        return view
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                aNoteView,
                bNoteView,
                cNoteView,
                dNoteView,
                eNoteView,
                fNoteView,
                gNoteView
            ]
        )
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        self.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
