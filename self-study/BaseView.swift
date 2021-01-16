//
//  BaseView.swift
//  self-study
//
//  Created by Айдар Чакиев on 16/1/21.
//

import UIKit

class BaseView: UIViewController {


    func getVC(name:String) -> UIViewController
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: name)
        return vc
    }

}
