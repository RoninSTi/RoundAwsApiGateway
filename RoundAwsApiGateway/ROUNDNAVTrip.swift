/*
 Copyright 2010-2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License").
 You may not use this file except in compliance with the License.
 A copy of the License is located at

 http://aws.amazon.com/apache2.0

 or in the "license" file accompanying this file. This file is distributed
 on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 express or implied. See the License for the specific language governing
 permissions and limitations under the License.
 */
 

import Foundation
import AWSCore

 
public class ROUNDNAVTrip : AWSModel {
    
    /** Identifier for the trip. */
    var id: String?
    /** Identifier for the user. */
    var userId: String?
    /** Title of the trip */
    var title: String?
    /** Notes only visible to owner of the trip */
    var notes: String?
    /** Total distance for the trip */
    var distance: NSNumber?
    /** Max G for the trip */
    var maxG: NSNumber?
    /** Average speed for the trip */
    var averageSpeed: NSNumber?
    /** Elevation for the trip */
    var elevation: NSNumber?
    /** Type of the trip (drive, walk, cycle) */
    var tripType: String?
    /** Map image for the trip */
    var previewImage: NSNumber?
    /** The submission date of this Trip. */
    var createdAt: NSDate?
    /** The updated date of this Trip. */
    var updatedAt: NSDate?
    var coordinates: [ROUNDNAVTrip_coordinates_item]?
    /** The user&#39;s Cognito ID. */
    var cognitoId: String?
    
   	public override static func jsonKeyPathsByPropertyKey() -> [AnyHashable : Any]!{
		var params:[AnyHashable : Any] = [:]
		params["id"] = "id"
		params["userId"] = "user_id"
		params["title"] = "title"
		params["notes"] = "notes"
		params["distance"] = "distance"
		params["maxG"] = "max_g"
		params["averageSpeed"] = "average_speed"
		params["elevation"] = "elevation"
		params["tripType"] = "trip_type"
		params["previewImage"] = "preview_image"
		params["createdAt"] = "created_at"
		params["updatedAt"] = "updated_at"
		params["coordinates"] = "coordinates"
		params["cognitoId"] = "cognito_id"
		
        return params
	}
	class func createdAtJSONTransformer() -> ValueTransformer{
		return AWSMTLValueTransformer.reversibleTransformer(forwardBlock: {(dateString: Any!) -> Any! in
		    return NSDate.aws_date(from: dateString as! String!, format: AWSDateShortDateFormat2)
		}, reverse: {(date: Any!) -> Any! in
		    return (date as! NSDate).aws_stringValue(AWSDateShortDateFormat2)
		})
	}
	class func updatedAtJSONTransformer() -> ValueTransformer{
		return AWSMTLValueTransformer.reversibleTransformer(forwardBlock: {(dateString: Any!) -> Any! in
		    return NSDate.aws_date(from: dateString as! String!, format: AWSDateShortDateFormat2)
		}, reverse: {(date: Any!) -> Any! in
		    return (date as! NSDate).aws_stringValue(AWSDateShortDateFormat2)
		})
	}
	class func coordinatesJSONTransformer() -> ValueTransformer{
		return  ValueTransformer.awsmtl_JSONArrayTransformer(withModelClass: ROUNDNAVTrip_coordinates_item.self);
	}
}
