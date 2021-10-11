//
//  DatabaseModel.swift
//  Beverages
//
//  Created by Sankalp Pandey on 03/10/21.
//

import Foundation
import FirebaseDatabase

struct DatabaseModel{

    static let sharedData = DatabaseModel()
    public let database = Database.database().reference()

    func checkNewUser(with email: String , completion: @escaping ((Bool) -> Void)){
        var safeEmail = email.replacingOccurrences(of: ".", with: "-")
        safeEmail = safeEmail.replacingOccurrences(of: "@", with: "-")
            database.child(safeEmail).observeSingleEvent(of: .value) { (snapshot) in
            guard let value = snapshot.value as? String
            else{
                completion(false)
                return
            }
            completion(true)
        }
    }

    public func addUser(with user: user){
        database.child(user.safeEmail).setValue([
            "First_name" : user.Firstname,
            "Last_Name"  : user.LastName
        ])
    }


}

struct user{
    var email:String
    var safeEmail: String{
        var safeEmail = email.replacingOccurrences(of: "@", with: "-")
        safeEmail.replacingOccurrences(of: ".", with: "-")
        return safeEmail
    }
    var Firstname: String
    var LastName : String
}
