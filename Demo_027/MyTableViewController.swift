//
//  MyTableViewController.swift
//  Demo_027
//
//  Created by 鄭淳澧 on 2021/8/23.
//

import UIKit

protocol AvatarChoosingDelegate {
    func didChoosing(image: UIImage, gender: String, color: UIColor)
}

class MyTableViewController: UITableViewController {
    
    private let userDatas: [UserData] = [
        UserData(avatar: UIImage(named: "girl")!,    gender: "女生", customColor: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1) ),
        UserData(avatar: UIImage(named: "boy")!,     gender: "男生", customColor: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1) ),
        UserData(avatar: UIImage(named: "machine")!, gender: "機體", customColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) )
    ]
    
    // MARK: - delegation pattern
    var delegate: AvatarChoosingDelegate!
    // MARK: - closure
//    var choosingCompletion: ( (UserData) -> Void )?
    
    @IBOutlet var personalImageView: [UIImageView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // configure imageView (background) cornerRadius
        for i in 0...(personalImageView.count - 1) {
            personalImageView[i].layer.cornerRadius = personalImageView[i].bounds.height / 2
        }
        
        
    }
    
    @IBAction func btnsTapped(_ sender: UIButton) {
        // MARK: - delegation pattern
        let userData = userDatas[sender.tag]
        delegate.didChoosing(image: userData.avatar,
                             gender: userData.gender,
                             color: userData.customColor)
        
        // MARK: - closure
//        choosingCompletion?(userDatas[sender.tag])
//        print(userDatas[sender.tag].gender)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    

    @IBAction func firstBtnTapped(_ sender: Any) {
//        delegate.didTapChoice(image: UIImage(named: "001")!, gender: "女生", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1) )
        
//        choosingCompletion!(userDatas[0])
//        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func secondBtnTapped(_ sender: Any) {
//        delegate.didTapChoice(image: UIImage(named: "002")!, gender: "男生", color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1) )
        
//        choosingCompletion!(userDatas[1])
//        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func thirdBtnTapped(_ sender: Any) {
//        delegate.didTapChoice(image: UIImage(named: "003")!, gender: "機體", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) )
        
//        choosingCompletion!(userDatas[2])
//        dismiss(animated: true, completion: nil)
    }
    

}
