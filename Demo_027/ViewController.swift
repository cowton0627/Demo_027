//
//  ViewController.swift
//  Demo_027
//
//  Created by 鄭淳澧 on 2021/8/23.
//

import UIKit

extension UIStoryboard {
    
    convenience init(name: String) {
        self.init(name: name, bundle: nil)
    }
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var choosingBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        chooseBtn.layer.cornerRadius = chooseBtn.bounds.height / 2
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let vc = segue.destination as? MyTableViewController {
//            vc.delegate = self
//        }
//    }

    @IBAction func choosingBtnTapped(_ sender: Any) {
//        performSegue(withIdentifier: "fromFirstToSecond", sender: nil)
        
        // this storyboard is default, so it's Main Storyboard
        // just like the code snippet: let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // we can use extension UIStoryboard, let storyboard = UIStoryboard(name: "Main")
//        let storyboard = UIStoryboard(name: "Main")
        
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "\(MyTableViewController.self)") as? MyTableViewController else { return }
        
        // MARK: - passing data using delegation pattern
        vc.delegate = self
        
        // MARK: - passing data using closure
//        vc.choosingCompletion = { [weak self] userData in
//            self?.avatarImageView.image = userData.avatar
//            self?.genderLabel.text = userData.gender
//            self?.view.backgroundColor = userData.customColor
//        }
        
        present(vc, animated: true, completion: nil)
//        show(vc, sender: nil)
    }
    
    
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        // this is unwind segue, usually using passing data in segue scenario
        // unwind segue scenario use to passing data from reverse transition
    }

}

extension ViewController: AvatarChoosingDelegate {

    func didChoosing(image: UIImage, gender: String, color: UIColor) {
        avatarImageView.image = image
        genderLabel.text = gender
        view.backgroundColor = color
    }
}
