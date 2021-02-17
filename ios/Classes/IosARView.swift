import Flutter
import UIKit
import Foundation
import ARKit

class IosARView: NSObject, FlutterPlatformView, ARSCNViewDelegate {
    let sceneView: ARSCNView

    init(
        frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
        self.sceneView = ARSCNView(frame: frame)
        super.init()
        //self.sceneView.delegate = self
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = .horizontal
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints,ARSCNDebugOptions.showWorldOrigin]    
        self.sceneView.delegate = self
        self.sceneView.session.run(configuration)
    }

    func view() -> UIView {
        return self.sceneView
    }

    //func createNativeView(view _view: UIView){
    //    _view.backgroundColor = UIColor.blue
    //    let nativeLabel = UILabel()
    //    nativeLabel.text = "Native text from iOS"
    //    nativeLabel.textColor = UIColor.white
    //    nativeLabel.textAlignment = .center
    //    nativeLabel.frame = CGRect(x: 0, y: 0, width: 180, height: 48.0)
    //    _view.addSubview(nativeLabel)
    //}
}
