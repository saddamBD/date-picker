import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePickerTxt: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePicker()
        
    }

    func createDatePicker() {
        
        // format for picker
        datePicker.datePickerMode = .date
        
        // toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // bar button item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: false)
        
        datePickerTxt.inputAccessoryView = toolbar
        
        // assigning date picker to text field
        datePickerTxt.inputView = datePicker
        
        
    }
    
    func donePressed() {
        
        // format date
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        
        datePickerTxt.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }



}

