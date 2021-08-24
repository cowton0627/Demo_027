//
//  MyTableViewController.swift
//  Demo_027
//
//  Created by 鄭淳澧 on 2021/8/23.
//

import UIKit

//protocol AvatarSelectionDelegate {
//    func didTapChoice(image: UIImage, gender: String, color: UIColor)
//}

struct PassData {
    var avatar: UIImage
    var gender: String
    var myColor: UIColor
}


class MyTableViewController: UITableViewController {
    @IBOutlet var myImgView: [UIImageView]!
    
//    var delegate: AvatarSelectionDelegate!
    
    
    let passDatas: [PassData] = [
        PassData(avatar: UIImage(named: "001")!, gender: "女生", myColor: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1) ),
        PassData(avatar: UIImage(named: "002")!, gender: "男生", myColor: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1) ),
        PassData(avatar: UIImage(named: "003")!, gender: "機體", myColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) )
    ]
    
//    var passData: PassData?
    var myClosure: ((PassData) -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        for i in 0...(myImgView.count - 1) {
//            myImgView[i].layer.cornerRadius = myImgView[i].bounds.height / 2
//        }
    }
    
    @IBAction func btnTapped(_ sender: UIButton) {
        myClosure?(passDatas[sender.tag])
        print(passDatas[sender.tag].gender)
        
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func firstBtnTapped(_ sender: Any) {
//        delegate.didTapChoice(image: UIImage(named: "001")!, gender: "女生", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1) )
        
//        guard let passData = passData else { return }
//        myClosure!(passData)
        
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func secondBtnTapped(_ sender: Any) {
//        delegate.didTapChoice(image: UIImage(named: "002")!, gender: "男生", color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1) )
        
        myClosure!(passDatas[1])

        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func thirdBtnTapped(_ sender: Any) {
//        delegate.didTapChoice(image: UIImage(named: "003")!, gender: "機體", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) )
        
        myClosure!(passDatas[2])

        dismiss(animated: true, completion: nil)

    }
    
    
    
    // MARK: - Table view data source


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
