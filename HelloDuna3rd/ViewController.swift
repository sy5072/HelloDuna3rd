//
//  ViewController.swift
//  HelloDuna3rd
//
//  Created by Seungyun Kim on 2022/07/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalPickerView: UIPickerView!
    
    var animalList: [AnimalModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        animalPickerView.dataSource = self
        animalPickerView.delegate = self
        initAnimalData()
        initAnimalLayout()
    }

    func initAnimalData() {
        animalList.append(contentsOf: [
            AnimalModel(imageName: "img_dog", animalName: "Dog"),
            AnimalModel(imageName: "img_cat", animalName: "Cat"),
            AnimalModel(imageName: "img_hamster", animalName: "Hamster"),
            AnimalModel(imageName: "img_rabbit", animalName: "Rabbit")
        ])
    }
    
    func initAnimalLayout() {
        animalImageView.image = animalList[0].makeImage()
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Start Keyboard")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("End Keyboard")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("End KeyBoard via return")
        textField.endEditing(true)
        return true
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return animalList.count
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return animalList[row].animalName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        animalImageView.image = animalList[row].makeImage()
    }
}
