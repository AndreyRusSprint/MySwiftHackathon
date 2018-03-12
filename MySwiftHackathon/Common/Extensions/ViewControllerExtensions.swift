//
//  ViewControllerExtensions.swift
//  MySwiftHackathon
//
//  Created by macmini on 12.03.2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import UIKit

extension UIViewController {
    private class func storyboardInstancePrivate<T: UIViewController>() -> T? {
        let storyboard = UIStoryboard(name: String(describing: self), bundle: nil)
        return storyboard.instantiateInitialViewController() as? T
    }
    class func storyboardInstance() -> Self? {
        return storyboardInstancePrivate()
    }
}
