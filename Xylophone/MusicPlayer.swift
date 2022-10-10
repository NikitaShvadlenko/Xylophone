import AVFoundation

final class MusicPlayer {

   private var player: AVAudioPlayer?

    public func playSound(sound: Sound) {
        guard let url = locateSoundFile(for: sound) else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }

    private func locateSoundFile(for sound: Sound) -> URL? {
        switch sound {
        case .aNote:
            return Bundle.main.url(forResource: Files.aWav.name, withExtension: Files.aWav.ext)
        case .bNote:
            return Bundle.main.url(forResource: Files.bWav.name, withExtension: Files.bWav.ext)
        case .cNote:
            return Bundle.main.url(forResource: Files.cWav.name, withExtension: Files.cWav.ext)
        case .dNote:
            return Bundle.main.url(forResource: Files.dWav.name, withExtension: Files.dWav.ext)
        case .eNote:
            return Bundle.main.url(forResource: Files.eWav.name, withExtension: Files.eWav.ext)
        case .fNote:
            return Bundle.main.url(forResource: Files.fWav.name, withExtension: Files.fWav.ext)
        case .gNote:
            return Bundle.main.url(forResource: Files.gWav.name, withExtension: Files.gWav.ext)
        }
    }
}
