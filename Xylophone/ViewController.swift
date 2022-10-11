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
    }
}
