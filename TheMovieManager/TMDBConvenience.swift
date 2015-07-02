//
//  TMDBConvenience.swift
//  TheMovieManager
//
//  Created by Jarrod Parkes on 2/11/15.
//  Copyright (c) 2015 Jarrod Parkes. All rights reserved.
//

import UIKit
import Foundation

// MARK: - Convenient Resource Methods

extension TMDBClient {
    
    // MARK: - Authentication (GET) Methods
    /*
    Steps for Authentication...
    https://www.themoviedb.org/documentation/api/sessions
    
    Step 1: Create a new request token
    Step 2a: Ask the user for permission via the website
    Step 3: Create a session ID
    Bonus Step: Go ahead and get the user id 😄!
    */
    func authenticateWithViewController(hostViewController: UIViewController, completionHandler: (success: Bool, errorString: String?) -> Void) {
        
        /* Chain completion handlers for each request so that they run one after the other */
        self.getRequestToken() { (success, requestToken, errorString) in
            
            if success {
                println("requestToken: \(requestToken)")
            } else {
                completionHandler(success: success, errorString: errorString)
            }
        }
    }
    
    func getRequestToken(completionHandler: (success: Bool, requestToken: String?, errorString: String?) -> Void) {
        
        /* 1. Specify parameters, method (if has {key}), and HTTP body (if POST) */
        /* 2. Make the request */
        /* 3. Send the desired value(s) to completion handler */
        println("implement me: TMDBClient getRequestToken")
        
    }
    
    // TODO: Make the following methods into convenience functions!
    
    //    /* This function opens a TMDBAuthViewController to handle Step 2a of the auth flow */
    //    func loginWithToken(requestToken: String?, hostViewController: UIViewController, completionHandler: (success: Bool, errorString: String?) -> Void) {
    //
    //        let authorizationURL = NSURL(string: "\(TMDBClient.Constants.AuthorizationURL)\(requestToken!)")
    //        let request = NSURLRequest(URL: authorizationURL!)
    //        let webAuthViewController = hostViewController.storyboard!.instantiateViewControllerWithIdentifier("TMDBAuthViewController") as TMDBAuthViewController
    //        webAuthViewController.urlRequest = request
    //        webAuthViewController.requestToken = requestToken
    //        webAuthViewController.completionHandler = completionHandler
    //
    //        let webAuthNavigationController = UINavigationController()
    //        webAuthNavigationController.pushViewController(webAuthViewController, animated: false)
    //
    //        dispatch_async(dispatch_get_main_queue(), {
    //            hostViewController.presentViewController(webAuthNavigationController, animated: true, completion: nil)
    //        })
    //    }
    //
    //    func getSessionID(requestToken: String) {
    //
    //        /* 1. Set the parameters */
    //        let methodParameters = [
    //            "api_key": appDelegate.apiKey,
    //            "request_token": requestToken
    //        ]
    //
    //        /* 2. Build the URL */
    //        let urlString = appDelegate.baseURLSecureString + "authentication/session/new" + appDelegate.escapedParameters(methodParameters)
    //        let url = NSURL(string: urlString)!
    //
    //        /* 3. Configure the request */
    //        let request = NSMutableURLRequest(URL: url)
    //        request.addValue("application/json", forHTTPHeaderField: "Accept")
    //
    //        /* 4. Make the request */
    //        let task = session.dataTaskWithRequest(request) { data, response, downloadError in
    //
    //            if let error = downloadError? {
    //                dispatch_async(dispatch_get_main_queue()) {
    //                    self.debugTextLabel.text = "Login Failed (Session ID)."
    //                }
    //                println("Could not complete the request \(error)")
    //            } else {
    //
    //                /* 5. Parse the data */
    //                var parsingError: NSError? = nil
    //                let parsedResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: &parsingError) as NSDictionary
    //
    //                /* 6. Use the data! */
    //                if let sessionID = parsedResult["session_id"] as? String {
    //                    self.appDelegate.sessionID = sessionID
    //                    self.getUserID(self.appDelegate.sessionID!)
    //                } else {
    //                    dispatch_async(dispatch_get_main_queue()) {
    //                        self.debugTextLabel.text = "Login Failed (Session ID)."
    //                    }
    //                    println("Could not find session_id in \(parsedResult)")
    //                }
    //            }
    //        }
    //
    //        /* 7. Start the request */
    //        task.resume()
    //    }
    //
    //    func getUserID(session_id : String) {
    //
    //        /* TASK: Get the user's ID, then store it (appDelegate.userID) for future use and go to next view! */
    //
    //        /* 1. Set the parameters */
    //        let methodParameters = [
    //            "api_key": appDelegate.apiKey,
    //            "session_id": session_id
    //        ]
    //
    //        /* 2. Build the URL */
    //        let urlString = appDelegate.baseURLSecureString + "account" + appDelegate.escapedParameters(methodParameters)
    //        let url = NSURL(string: urlString)!
    //
    //        /* 3. Configure the request */
    //        let request = NSMutableURLRequest(URL: url)
    //        request.addValue("application/json", forHTTPHeaderField: "Accept")
    //
    //        /* 4. Make the request */
    //        let task = session.dataTaskWithRequest(request) { data, response, downloadError in
    //
    //            if let error = downloadError? {
    //                dispatch_async(dispatch_get_main_queue()) {
    //                    self.debugTextLabel.text = "Login Failed (User ID)."
    //                }
    //                println("Could not complete the request \(error)")
    //            } else {
    //
    //                /* 5. Parse the data */
    //                var parsingError: NSError? = nil
    //                let parsedResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: &parsingError) as NSDictionary
    //
    //                /* 6. Use the data! */
    //                if let userID = parsedResult["id"] as? Int {
    //                    self.appDelegate.userID = userID
    //                    self.completeLogin()
    //
    //                } else {
    //                    dispatch_async(dispatch_get_main_queue()) {
    //                        self.debugTextLabel.text = "Login Failed (User ID)."
    //                    }
    //                    println("Could not find id in \(parsedResult)")
    //                }
    //            }
    //        }
    //        
    //        /* 7. Start the request */
    //        task.resume()
    //    }
    
}