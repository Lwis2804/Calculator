//
//  TabBarControler.swift
//  Calculator
//
//  Created by LUIS GONZALEZ on 19/02/24.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view1 = self.createNavController(for: CalculatorViewController(), title: "Calculator", image: UIImage(systemName: "calculator.fill") ?? UIImage())
      
        self.viewControllers = [view1]
    }
    
    func createNavController(for mainViewController : UIViewController, title: String, image: UIImage ) -> UIViewController{
        let navController = UINavigationController(rootViewController: mainViewController)
        navController.tabBarItem.title = "\(title)"
        mainViewController.navigationItem.title = "\(title)"
        navController.tabBarItem.image = image
        mainViewController.navigationItem.backButtonTitle = "Atras"
        return navController
    }
}
