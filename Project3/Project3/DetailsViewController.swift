import UIKit

class DetailsViewController : UIViewController {

    var bankAccount : BankAccount! = nil
    
    @IBOutlet weak var profilePhoto: UIImageView!
    @IBOutlet weak var lblAccountHolderName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        assert(bankAccount != nil, "You need to set the bank account prior to loading this view controller")
        
        self.title = "Details"
        
        profilePhoto.image = bankAccount.image
        lblAccountHolderName.text = bankAccount.userName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

