import AVFoundation
import MediaPlayer
import ExpoModulesCore
import UIKit

/**
 * Bridges the system media volume on iOS.
 *
 * iOS intentionally does not expose a direct set-volume API. MPVolumeView is
 * Apple's supported control for changing the system volume, so a small hidden
 * instance is kept in the app window and its slider is updated from JS.
 */
public class NovaVolumeModule: Module {
  private var volumeView: MPVolumeView?
  private var volumeObserver: NSObjectProtocol?

  public func definition() -> ModuleDefinition {
    Name("NovaVolume")
    Events("onVolumeChange")

    OnCreate {
      try? AVAudioSession.sharedInstance().setCategory(.playback)
      try? AVAudioSession.sharedInstance().setActive(true)
      self.installVolumeView()
      self.volumeObserver = NotificationCenter.default.addObserver(
        forName: NSNotification.Name(rawValue: "AVSystemController_SystemVolumeDidChangeNotification"),
        object: nil,
        queue: .main
      ) { [weak self] _ in
        self?.sendCurrentVolume()
      }
    }

    OnDestroy {
      if let observer = self.volumeObserver {
        NotificationCenter.default.removeObserver(observer)
      }
      self.volumeObserver = nil
      self.volumeView?.removeFromSuperview()
      self.volumeView = nil
    }

    AsyncFunction("getVolume") {
      AVAudioSession.sharedInstance().outputVolume
    }

    AsyncFunction("setVolume") { (value: Double, showUi: Bool) in
      self.installVolumeView()
      let target = Float(value.clamped(to: 0...1))
      DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
        self.volumeView?.subviews
          .compactMap { $0 as? UISlider }
          .first?
          .setValue(target, animated: false)
        self.sendCurrentVolume()
      }
    }
  }

  private func installVolumeView() {
    guard volumeView == nil else { return }
    let view = MPVolumeView(frame: CGRect(x: -100, y: -100, width: 1, height: 1))
    view.isHidden = true
    view.alpha = 0.01
    volumeView = view
    DispatchQueue.main.async {
      guard let window = UIApplication.shared.connectedScenes
        .compactMap({ ($0 as? UIWindowScene)?.keyWindow })
        .first else { return }
      window.addSubview(view)
    }
  }

  private func sendCurrentVolume() {
    sendEvent("onVolumeChange", [
      "volume": AVAudioSession.sharedInstance().outputVolume
    ])
  }
}

private extension Double {
  func clamped(to range: ClosedRange<Double>) -> Double {
    Swift.min(Swift.max(self, range.lowerBound), range.upperBound)
  }
}