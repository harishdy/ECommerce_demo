
import Foundation
import SwiftyJSON
import AlamofireSwiftyJSON

public class Json4Swift_Base {
	public var rankings =  [Rankings]()
    public var categories  = [Categories]()
    init(item:JSON){
        for temp_Rankings in item["rankings"].arrayValue{
            let obj_Ranking = Rankings.init(item: temp_Rankings)
            self.rankings.append(obj_Ranking)
        }
        for temp_Category in item["categories"].arrayValue{
            let obj_Category = Categories.init(item: temp_Category)
            self.categories.append(obj_Category)
        }
    }

}
