//
//  AnimalModel.swift
//  HelloDuna3rd
//
//  Created by Seungyun Kim on 2022/07/12.
//

import UIKit

struct AnimalModel {
    var imageName: String
    var animalName: String
    
    func makeImage() -> UIImage? {
        return UIImage(named: imageName)
    }
}

struct AppModel {
    var imageName: String
    var appName: String
    var appDescription: String
    
    func makeImage() -> UIImage? {
        return UIImage(named: imageName)
    }
}
