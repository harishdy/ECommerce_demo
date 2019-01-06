

import Foundation
import SwiftyJSON
import AlamofireSwiftyJSON

public class Variants {
	public var color : String?
	public var id : Int?
	public var price : Int?
	public var size : Int?
    
    init(item:JSON){
        self.color  = item["color"].stringValue
        self.id     = item["id"].intValue
        self.price  = item["price"].intValue
        self.size   = item["size"].intValue
    }
}
