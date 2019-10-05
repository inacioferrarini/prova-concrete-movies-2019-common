//    The MIT License (MIT)
//
//    Copyright (c) 2019 Inácio Ferrarini
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.
//

import UIKit

public extension UITableViewCell {

    public func setDisclosureIndicatorColor(_ color: UIColor) {
        assert(accessoryType == .disclosureIndicator, "accessory type needs to be UITableViewCellAccessoryDisclosureIndicator")
        var image = self.arrowButton()?.backgroundImage(for: .normal)
        image = image?.tint(with: color)
        arrowButton()?.setBackgroundImage(image, for: .normal)
    }

    public func disclosureIndicatorColor() -> UIColor? {
        assert(accessoryType == .disclosureIndicator, "accessory type needs to be UITableViewCellAccessoryDisclosureIndicator")
        return arrowButton()?.tintColor
    }

    func arrowButton() -> UIButton? {
        for view in self.subviews {
            if let button = view as? UIButton {
                return button
            }
        }
        return nil
    }

}
