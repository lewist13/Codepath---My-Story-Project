//
//  ViewController.swift
//  Codepath - My Story Project
//
//  Created by TaeVon Lewis on 2/23/23.
//

import UIKit

class ViewController: UIViewController {
    let contextTitles = ["About Me", "Powers and Abilities", "Shadow Garden Members"]
        let contextImages = ["cid_kagenou", "cid_kagenou_powers", "shadow_garden"]
        let contextDescriptions = [
            "Fascinated by shadowbrokers, a young Japanese boy once trained for years to become a secret powerful individual while playing the role of a mob character in public. In his delusion, he ran into a truck and died, and reincarnated as Cid Kagenou.",
            "Iris Midgar, upon facing him under his \"Shadow\" persona, claimed Cid to be \"the most powerful being in the world\". So far, even though he has yet to go all-out, all of Cid's battles have ended with overwhelming victories.",
            "Shadow Garden is an mysterious hidden organization founded by Cid Kagenō also known as Shadow. Its primary goal was to eliminate the Cult of Diablos and prevent them from resurrecting the ancient demon, Diabolos."
        ]
    
    var context: [Context] = []
    
    @IBOutlet var lordshadowpfp: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<contextTitles.count {
                    let newContext = Context(title: contextTitles[i], image: UIImage(named: contextImages[i])!, description: contextDescriptions[i])
                    context.append(newContext)
                }
        
        lordshadowpfp.layer.cornerRadius = lordshadowpfp.frame.size.width / 2
        lordshadowpfp.clipsToBounds = true
    }
    
    @IBAction func didTapContext(_ sender: UIButton) {
            performSegue(withIdentifier: "detailSegue", sender: sender)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard segue.identifier == "detailSegue",
                  let tappedContext = (sender as? UIButton)?.tag,
                  let detailViewController = segue.destination as? DetailViewController,
                  tappedContext < context.count else {
                print("Invalid context item selected.")
                return
            }
            
            detailViewController.context = context[tappedContext]
    }
}
