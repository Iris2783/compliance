import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)
        // スプラッシュ画面の表示時間を設定（例: 3秒）
        Thread.sleep(forTimeInterval: 3.0)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}

