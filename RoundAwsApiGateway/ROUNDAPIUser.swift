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

 
public class ROUNDAPIUser : AWSModel {
    
    /** Identifier for the user. */
    var id: NSNumber?
    /** First name of the user. */
    var firstname: String?
    /** Last name of the user. */
    var lastname: String?
    /** The user&#39;s Email address. */
    var email: String?
    /** The user&#39;s Facebook ID. */
    var facebookId: String?
    /** The user&#39;s Google ID. */
    var googleId: String?
    /** The user&#39;s Twitter ID. */
    var twitterId: String?
    /** The user&#39;s Round User Pool ID. */
    var userpoolId: String?
    /** The user&#39;s Cognito ID. */
    var cognitoId: String?
    
   	public override static func jsonKeyPathsByPropertyKey() -> [AnyHashable : Any]!{
		var params:[AnyHashable : Any] = [:]
		params["id"] = "id"
		params["firstname"] = "firstname"
		params["lastname"] = "lastname"
		params["email"] = "email"
		params["facebookId"] = "facebook_id"
		params["googleId"] = "google_id"
		params["twitterId"] = "twitter_id"
		params["userpoolId"] = "userpool_id"
		params["cognitoId"] = "cognito_id"
		
        return params
	}
}
