//
//  ContactsDetailViewController.swift
//  DoChat
//
//  Created by Gonzalo on 14/01/16.
//  Copyright © 2016 doapps. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {

    
    @IBOutlet weak var contactNumber: UILabel!
    @IBOutlet weak var contactImageView: UIImageView!
    
    var detailContact: User? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        if let detailContact = detailContact {
            if let contactNumber = contactNumber, contactImageView = contactImageView {
                contactNumber.text = detailContact.number
                contactImageView.image = UIImage(named: detailContact.name)
                title = detailContact.name
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
