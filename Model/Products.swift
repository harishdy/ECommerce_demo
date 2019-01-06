
import Foundation
import SwiftyJSON
import AlamofireSwiftyJSON
 

public class Products {
	public var date_added : String?
	public var variants = [Variants]()
	public var tax : Tax?
	public var id : Int?
	public var name : String?
    public var view_count :String?
   
    init(item:JSON) {
        self.date_added = item["date_added"].stringValue
        for temp_variant in item["variants"].arrayValue{
            let obj_variant = Variants.init(item: temp_variant)
            self.variants.append(obj_variant)
        }
        self.tax = Tax.init(item: JSON(item["tax"].dictionaryValue))
        self.id = item["id"].intValue
        self.name = item["name"].stringValue
        self.view_count = ""
    }


}
