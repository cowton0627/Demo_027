//
//  ViewController.swift
//  Demo_027
//
//  Created by 鄭淳澧 on 2021/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myAvatarImgView: UIImageView!
    @IBOutlet weak var chooseBtn: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseBtn.layer.cornerRadius = chooseBtn.bounds.height / 2
        
    }

    @IBAction func chooseBtnTapped(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier:  "\(MyTableViewController.self)") as! MyTableViewController
//        controller.delegate = self
        controller.myClosure = { [weak self] passData in
            self?.myAvatarImgView.image = passData.avatar
            self?.myLabel.text = passData.gender
            self?.view.backgroundColor = passData.myColor
        }
        present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
    }

}

//extension ViewController: AvatarSelectionDelegate {
//    func didTapChoice(image: UIImage, gender: String, color: UIColor) {
//        myAvatarImgView.image = image
//        myLabel.text = gender
//        view.backgroundColor = color
//    }
//}
