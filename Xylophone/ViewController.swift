import UIKit

class ViewController: UIViewController {
    let mainScreenView = MainScreenView()
    let player = MusicPlayer()
    override func loadView() {
        view = mainScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        mainScreenView.setDelegateForButtons(delegate: self)
    }
}

// MARK: KeyVeiwDelegate
extension ViewController: KeyViewDelegate {
    func keyView(_ keyView: KeyView, didPressButtonFor sound: Sound) {
        self.player.playSound(sound: sound)
        fadeInFadeOutAnimation(for: keyView)
    }
}

// MARK: - Private Methods
extension ViewController {
    private func fadeInFadeOutAnimation(for view: UIView) {
        view.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            view.alpha = 1
        }
    }
}
