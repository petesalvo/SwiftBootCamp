import UIKit

class BankAccountsViewController: UITableViewController {

    
    private var bankAccounts : [BankAccount] = [BankAccount]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newAccount : BankAccount = BankAccount(firstName: "Kermit", lastName: "D. Frog", address: "121 Gigawatt Street", initialBalance: 200.00)
        bankAccounts.append(newAccount)
        
        let newAccount2 : BankAccount = BankAccount(firstName: "Mrs", lastName: "Piggy", address: "1800 SW Sesame Street", initialBalance: -200.00)
        bankAccounts.append(newAccount2)
        
//        let newAccount3 : BankAccount = BankAccount(firstName: "Animal", lastName: "", address: "No one knows", initialBalance: 0)
//        bankAccounts.append(newAccount3)

        tableView.delegate = self
        tableView.dataSource = self
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // This is a MARK statement, it separates a group of related functions from one another
    //MARK: - UITableView Delegate Methods

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3 // Hmmm...something fishy here. Shouldn't this return the count of our bank accounts?
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("ReuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = "First and last name here"
        cell.detailTextLabel?.text = "Bank account balance here"
        
        return cell
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AccountDetailsSegue" {
            if let destinationViewController = segue.destinationViewController as? DetailsViewController {
                if let selectedIndex = tableView.indexPathForSelectedRow?.row {
                    destinationViewController.bankAccount = bankAccounts[selectedIndex]
                }
            }
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120
    }
    
    
    
    

}

