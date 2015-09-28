//
//  ViewController.swift
//  TextViewCustomCell
//
//  Created by Mauro on 9/27/15.
//  Copyright © 2015 mc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableview: UITableView!
    
    
    var data = ["German authorities have put in place a system for sending home people who have come from poor but safe countries to seek jobs.",        "No news here!", "A Pew Research Center report revealed major shifts in immigration to the U.S. since Congress passed the Immigration and Nationality Act a half-century ago.",
        "The resignation of Speaker John A. Boehner is intensifying the divide that has emboldened hard-right lawmakers and insurgent presidentia candidates.",
        "Jonathan Franzen reviews Sherry Turkle’s new book, which is based on interviews with people who say they feel controlled by new technologies.",
        "The Steelers lost quarterback Ben Roethlisberger to a knee injury, while Tom Brady became just the fourth passer to throw 400 touchdowns.",
        "Pope Departs, After Showing a Deft Touch",
        "The Stress of New Construction", "On Baseball: Jonathan Papelbon Attacks Bryce Harper, and Nationals Manager Fails to Send Signal",
        "Bad blood: John Boehner and his  tormentor Ted Cruz",
        "A day after the Nats’ postseason hopes officially ended, the dugout fight between Washington’s star slugger and its closer exemplified the team’s dysfunction.",
        "On Sunday morning, as China president, Xi Jinping, prepared to share his thoughts on women's equality at a U.N. meeting on gender, Hillary Clinton offered her own take on the day's events. Re-tweeting a New York Times story about China's record on women's issues,  and citing China's arrest of five feminists in March, the presidential candidate called Xi's presence at the summit shameless.",
        "Clarin.comMundo28/09/15 A bordo del avión de regreso a Roma, el Papa dijo que no se siente una estrella",
        "Durante la habitual charla que suele tener el papa Francisco con los periodistas que lo acompañan en el avión de regreso a Roma, Francisco dijo que se siente “siervo de los siervos de Dios. Es un poco diferente de star”. Habló también de la paz en Colombia, China y los inmigrantes, entre otros temas.",
        "Un diario español reveló cuál será el paso por paso de la rehabilitación del argentino, con rotura parcial del ligamento colateral interno de su rodilla derecha.",
        "Donald Trump reparte declaraciones hacia todos los frentes. Ahora fue turno del Papa Francisco, de quien comentó respetarlo, pero el empresario afirmó que cuando se lo encuentre tendrá que prevenirlo.",
        "Si les négociations exclusives aboutissent, l'actionnaire majoritaire de Burger King France deviendra le deuxième acteur du secteur. Et la marque Quick disparaîtrait dans le pays.",
        "Rencontre avec deux jeunes Syriens le soir où ils vont tenter de rejoindre la Grèce par la mer depuis la Turquie. Entre angoisses et espoir"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CustomCellView", bundle: nil)
        tableview.registerNib(nib, forCellReuseIdentifier: "customCell")
       
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    //Mark UITableView delegate methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("customCell") as! CustomCellView
        
        cell.titleLabel.text = "News " + String(indexPath.row)
        cell.titleLabel.font = UIFont(name: "Helvetica-Bold", size: 16)
        
        cell.detailTextView.font = UIFont(name: "Helvetica", size: 12)
        cell.detailTextView.textColor = UIColor.grayColor()
        cell.detailTextView.scrollRangeToVisible(NSRange(location:0, length:0))
        cell.detailTextView.text = data[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        print(indexPath.row)
        let text = data[indexPath.row]
        if (text.characters.count < 100) {
            return 70.0
        }else if (text.characters.count >= 100 && text.characters.count < 200) {
            return 100.0
        }else {
            return 150
        }
    }

    
}

