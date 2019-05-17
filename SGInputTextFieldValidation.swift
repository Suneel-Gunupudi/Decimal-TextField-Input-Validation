func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    let inverseSet = NSCharacterSet(charactersIn:"0123456789").inverted
    let components = string.components(separatedBy: inverseSet)
    let filtered = components.joined(separator: "")
    if filtered == string {
        return true
    } else {
        if string == "." {
            guard let text = textField.text else { return true }
            let countdots = textField.text!.components(separatedBy:".").count - 1
            if countdots == 0 {
                if text.isEmpty {
                    let newText = "0" + string
                    textField.text = newText
                    return false
                }
                return true
            }else{
                if countdots > 0 && string == "." {
                    return false
                } else {
                    if text.isEmpty {
                        let newText = "0" + string
                        textField.text = newText
                        return false
                    }
                    return true
                }
            }
        }else{
            return false
        }
    }
    return true
}

