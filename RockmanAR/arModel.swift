//
//  RockmanModel.swift
//  RockmanAR
//
//  Created by Ice on 21/3/2562 BE.
//  Copyright © 2562 Ice. All rights reserved.
//

import ARKit

class arModel: SCNNode {
    
    func loadModel() {
        guard let virtualObjectScene = SCNScene(named: "shipc.scn")
            else {
                print("Cant fetch 'dae' file")
                return
        }
        let wrapperNode = SCNNode()
        print("Fetch susscess")
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        addChildNode(wrapperNode)
    }
    
}
