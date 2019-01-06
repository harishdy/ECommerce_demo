

import Foundation
import SwiftyJSON
import AlamofireSwiftyJSON

public class Tax {
	public var value : Double?
	public var name : String?

    init(item:JSON) {
        self.value    = item["value"].doubleValue
        self.name     = item["name"].stringValue
    }

}
