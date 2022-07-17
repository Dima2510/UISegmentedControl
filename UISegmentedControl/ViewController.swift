//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Дмитрий Процак on 17.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //создание segmenControl через код
    
    var segmentControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titles = ["one","two","three"]
        segmentControl = UISegmentedControl(items: titles)
      
        ///adding new segment
        segmentControl.insertSegment(withTitle: "four", at: 3, animated: true)
        
        ///change Name of Title
        segmentControl.setTitle("oone", forSegmentAt: 0)
        ///receiving title for choosen segment
        print(segmentControl.titleForSegment(at: 0)!)
        
        ///adding Image for segment
        segmentControl.setImage(UIImage(systemName: "circle")!, forSegmentAt: 0)
        ///выбрали определенный сегмент и поменяли ему цвет
        segmentControl.selectedSegmentIndex = 0
        segmentControl.selectedSegmentTintColor = UIColor.red
      
        
        ///настройкого ширины текущего сегмента
        //segmentControl.setWidth(150, forSegmentAt: 2)
        
        ///данный метод используеться для автоматической подстройки ширины сегмента
        segmentControl.setTitle("so long title text", forSegmentAt: 2)
        segmentControl.apportionsSegmentWidthsByContent = true
        
        print(segmentControl.numberOfSegments) //- кол во сегментов
        
        
        //Задать действие
        
        
        segmentControl.addTarget(self, action: #selector(segmentAction), for: .valueChanged)
        
      
        
        
        
       
        
        
        ///adding to main view
        view.addSubview(segmentControl)
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        ///adding constrains
        NSLayoutConstraint.activate([segmentControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                                     segmentControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                                     segmentControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16)])
        
    }
    
    //функция вывода названия выбраного сегмента в консоль
    @objc func segmentAction(sender: UISegmentedControl) {
        print(sender.titleForSegment(at: sender.selectedSegmentIndex)!)
     }


}

