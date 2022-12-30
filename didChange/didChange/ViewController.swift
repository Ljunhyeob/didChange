//
//  ViewController.swift
//  didChange
//
//  Created by 이준협 on 2022/12/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textFieldCount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.textField.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
        
    }


    @objc func textFieldDidChange(_ sender: Any?) {
        var textCount = textField.text!.count //textField 의 글자수를 저장
        textFieldCount.text = "\(String(describing: textCount))" //저장한값을 라벨에 보여줌
        
    }
    
}

