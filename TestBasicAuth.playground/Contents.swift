////: Playground - noun: a place where people can play
//
//import UIKit
//
//let username = "user"
//let password = "pass"
//let loginString = NSString(format: "%@:%@", username, password)
//let loginData: NSData = loginString.dataUsingEncoding(NSUTF8StringEncoding)!
//let base64LoginString = loginData.base64EncodedStringWithOptions([])
//
//let url = NSURL(string: "http://www.example.com/")
//let request = NSMutableURLRequest(URL: url!)
//request.HTTPMethod = "POST"
//request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
//
//// fire off the request
//// make sure your class conforms to NSURLConnectionDelegate
//let urlConnection = NSURLConnection(request: request, delegate: self)
//
import Foundation

let config = NSURLSessionConfiguration.defaultSessionConfiguration()
let userPasswordString = "C000000001:29daf34cd075deb29b89007d6e1af9a7"
let userPasswordData = userPasswordString.dataUsingEncoding(NSUTF8StringEncoding)
let base64EncodedCredential = userPasswordData!.base64EncodedStringWithOptions([])
let authString = "Basic \(base64EncodedCredential)"
config.HTTPAdditionalHeaders = ["Authorization" : authString]
let session = NSURLSession(configuration: config)

var running = false
let url = NSURL(string: "http://mathmaven.sgsocialmedia.com/api/questions")
let task = session.dataTaskWithURL(url!) {
    (let data, let response, let error) in
    if let httpResponse = response as? NSHTTPURLResponse {
        let dataString = NSString(data: data!, encoding: NSUTF8StringEncoding)
        print(dataString)
    }
    running = false
}

running = true
task.resume()

while running {
    print("waiting...")
    sleep(1)
}