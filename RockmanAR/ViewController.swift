
import UIKit
import ARKit
import SceneKit

class ViewController: UIViewController {
  
    @IBOutlet weak var screenView: ARSCNView!
    let objModel = arModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addModel()
        setupConfiguration()
    }
    
    func setupScene() {
        let scene = SCNScene()
        screenView.scene = scene
    }
    
    func setupConfiguration() {
        let config = ARWorldTrackingConfiguration()
        screenView.session.run(config)
    }
    
    func addModel() {
        objModel.loadModel()
        objModel.position = SCNVector3(0, -0.5, -2.0)
        objModel.scale = SCNVector3(1.0, 1.0, 1.0)
        screenView.scene.rootNode.addChildNode(objModel)
    }
}

