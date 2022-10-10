import UIKit

class MainScreenView: UIView {
    private lazy var aNoteView: KeyView = {
        let view = KeyView()
        view.configureButton(with: Sound.cNote)
        view.backgroundColor = .red
        view.
        return view
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: )
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        return stackView
    }()
}
