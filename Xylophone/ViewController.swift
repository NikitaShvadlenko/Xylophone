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

extension ViewController: KeyViewDelegate {
    func keyView(_ keyView: KeyView, didPressButtonFor sound: Sound) {
        player.playSound(sound: sound)
    }
}
