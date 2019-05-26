//
//  ViewController.swift
//  tictactoe
//
//  Created by Keshav Pradeep on 5/19/19.
//  Copyright © 2019 Keshav Pradeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var TopLeftX: UIImageView!
    @IBOutlet weak var TopMiddleX: UIImageView!
    @IBOutlet weak var TopRightX: UIImageView!
    @IBOutlet weak var MiddleLeftX: UIImageView!
    @IBOutlet weak var MiddleMiddleX: UIImageView!
    @IBOutlet weak var MiddleRightX: UIImageView!
    @IBOutlet weak var BottomLeftX: UIImageView!
    @IBOutlet weak var BottomMiddleX: UIImageView!
    @IBOutlet weak var BottomRightX: UIImageView!
    @IBOutlet weak var TopLeftO: UIImageView!
    @IBOutlet weak var TopMiddleO: UIImageView!
    @IBOutlet weak var TopRightO: UIImageView!
    @IBOutlet weak var MiddleLeftO: UIImageView!
    @IBOutlet weak var MiddleMiddleO: UIImageView!
    @IBOutlet weak var MiddleRightO: UIImageView!
    @IBOutlet weak var BottomLeftO: UIImageView!
    @IBOutlet weak var BottomMiddleO: UIImageView!
    @IBOutlet weak var BottomRightO: UIImageView!
    @IBOutlet weak var RestartButton: UIButton!
    @IBOutlet weak var P1: UILabel!
    @IBOutlet weak var P2: UILabel!
    @IBOutlet weak var P1Win: UILabel!
    @IBOutlet weak var P2Win: UILabel!
    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var tieGame: UILabel!
    
    
    var count1:Int = 0
    var count2:Int = 0
    var count3:Int = 0
    var count4:Int = 0
    var count5:Int = 0
    var count6:Int = 0
    var count7:Int = 0
    var count8:Int = 0
    var count9:Int = 0
    var player:Int = 1
    
    
    func reset(Hcounter: Int) {
        if Hcounter == 10 {
            RestartButton.isHidden = false
        }
    }
    
    func Winner(){
        //player 1/X win situations
        if (TopRightX.isHidden == false && TopMiddleX.isHidden == false && TopLeftX.isHidden == false){
            player = 10
            P1Win.isHidden = false
            titleName.isHidden = true
        } else if (MiddleRightX.isHidden == false && MiddleMiddleX.isHidden == false && MiddleLeftX.isHidden == false){
            player = 10
            P1Win.isHidden = false
            titleName.isHidden = true
        } else if (BottomRightX.isHidden == false && BottomMiddleX.isHidden == false && BottomLeftX.isHidden == false){
            player = 10
            P1Win.isHidden = false
            titleName.isHidden = true
        } else if (TopRightX.isHidden == false && MiddleMiddleX.isHidden == false && BottomLeftX.isHidden == false){
            player = 10
            P1Win.isHidden = false
            titleName.isHidden = true
        } else if (BottomRightX.isHidden == false && MiddleMiddleX.isHidden == false && TopLeftX.isHidden == false){
            player = 10
            P1Win.isHidden = false
            titleName.isHidden = true
        } else if (TopRightX.isHidden == false && MiddleRightX.isHidden == false && BottomRightX.isHidden == false){
            player = 10
            P1Win.isHidden = false
            titleName.isHidden = true
        } else if (TopMiddleX.isHidden == false && MiddleMiddleX.isHidden == false && BottomMiddleX.isHidden == false){
            player = 10
            P1Win.isHidden = false
            titleName.isHidden = true
        } else if (TopLeftX.isHidden == false && MiddleLeftX.isHidden == false && BottomLeftX.isHidden == false){
            player = 10
            P1Win.isHidden = false
            titleName.isHidden = true
        }
        
        //player 2/O win situations
        else if (TopRightO.isHidden == false && TopMiddleO.isHidden == false && TopLeftO.isHidden == false){
            player = 10
            P2Win.isHidden = false
            titleName.isHidden = true
        } else if (MiddleRightO.isHidden == false && MiddleMiddleO.isHidden == false && MiddleLeftO.isHidden == false){
            player = 10
            P2Win.isHidden = false
            titleName.isHidden = true
        } else if (BottomRightO.isHidden == false && BottomMiddleO.isHidden == false && BottomLeftO.isHidden == false){
            player = 10
            P2Win.isHidden = false
            titleName.isHidden = true
        } else if (TopRightO.isHidden == false && MiddleMiddleO.isHidden == false && BottomLeftO.isHidden == false){
            player = 10
            P2Win.isHidden = false
            titleName.isHidden = true
        } else if (BottomRightO.isHidden == false && MiddleMiddleO.isHidden == false && TopLeftO.isHidden == false){
            player = 10
            P2Win.isHidden = false
            titleName.isHidden = true
        } else if (TopRightO.isHidden == false && MiddleRightO.isHidden == false && BottomRightO.isHidden == false){
            player = 10
            P2Win.isHidden = false
            titleName.isHidden = true
        } else if (TopMiddleO.isHidden == false && MiddleMiddleO.isHidden == false && BottomMiddleO.isHidden == false){
            player = 10
            P2Win.isHidden = false
            titleName.isHidden = true
        } else if (TopLeftO.isHidden == false && MiddleLeftO.isHidden == false && BottomLeftO.isHidden == false){
            player = 10
            P2Win.isHidden = false
            titleName.isHidden = true
        }
        //tie
        else if (player == 10){
            titleName.isHidden = true
            tieGame.isHidden = false
        }
    }
    
    @IBAction func ResetPushed(_ sender: Any) {
        TopLeftO.isHidden = true
        TopLeftX.isHidden = true
        TopMiddleO.isHidden = true
        TopMiddleX.isHidden = true
        TopRightO.isHidden = true
        TopRightX.isHidden = true
        MiddleLeftO.isHidden = true
        MiddleLeftX.isHidden = true
        MiddleMiddleO.isHidden = true
        MiddleMiddleX.isHidden = true
        MiddleRightO.isHidden = true
        MiddleRightX.isHidden = true
        BottomLeftO.isHidden = true
        BottomLeftX.isHidden = true
        BottomMiddleO.isHidden = true
        BottomMiddleX.isHidden = true
        BottomRightO.isHidden = true
        BottomRightX.isHidden = true
        count1 = 0
        count2 = 0
        count3 = 0
        count4 = 0
        count5 = 0
        count6 = 0
        count7 = 0
        count8 = 0
        count9 = 0
        player = 1
        P1.isHidden = false
        P2.isHidden = true
        P1Win.isHidden = true
        P2Win.isHidden = true
        titleName.isHidden = false
        RestartButton.isHidden = true
        tieGame.isHidden = true
    }
    
    @IBAction func Top_Left(_ sender: Any) {
        if count1 == 0 {
            count1 += 1
            if player % 2 == 1 {
                //player1
                TopLeftX.isHidden = false
                player += 1
                P2.isHidden = false
                P1.isHidden = true
            }else if player % 2 == 0 {
                //player2
                TopLeftO.isHidden = false
                player += 1
                P2.isHidden = true
                P1.isHidden = false
            }
            print(player%2)
            Winner()
            reset(Hcounter: player)
        }
    }
    
    @IBAction func Top_Middle(_ sender: Any) {
        if count2 == 0 {
            count2 += 1
            if player % 2 == 1 {
                //player1
                TopMiddleX.isHidden = false
                player += 1
                P2.isHidden = false
                P1.isHidden = true
            }else if player % 2 == 0 {
                //player2
                TopMiddleO.isHidden = false
                player += 1
                P2.isHidden = true
                P1.isHidden = false
            }
            print(player%2)
            Winner()
            reset(Hcounter: player)
        }
    }
    
    @IBAction func Top_Right(_ sender: Any) {
        if count3 == 0 {
            count3 += 1
            if player % 2 == 1 {
                //player1
                TopRightX.isHidden = false
                player += 1
                P2.isHidden = false
                P1.isHidden = true
            }else if player % 2 == 0 {
                //player2
                TopRightO.isHidden = false
                player += 1
                P2.isHidden = true
                P1.isHidden = false
            }
            print(player%2)
            Winner()
            reset(Hcounter: player)
        }
    }
    
    @IBAction func Middle_Left(_ sender: Any) {
        if count4 == 0 {
            count4 += 1
            if player % 2 == 1 {
                //player1
                MiddleLeftX.isHidden = false
                player += 1
                P2.isHidden = false
                P1.isHidden = true
            }else if player % 2 == 0 {
                //player2
                MiddleLeftO.isHidden = false
                player += 1
                P2.isHidden = true
                P1.isHidden = false
            }
            print(player%2)
            Winner()
            reset(Hcounter: player)
        }
    }
    
    @IBAction func Middle_Middle(_ sender: Any) {
        if count5 == 0 {
            count5 += 1
            if player % 2 == 1 {
                //player1
                MiddleMiddleX.isHidden = false
                player += 1
                P2.isHidden = false
                P1.isHidden = true
            }else if player % 2 == 0 {
                //player2
                MiddleMiddleO.isHidden = false
                player += 1
                P2.isHidden = true
                P1.isHidden = false
            }
            print(player%2)
            Winner()
            reset(Hcounter: player)
        }
    }
    
    @IBAction func Middle_Right(_ sender: Any) {
        if count6 == 0 {
            count6 += 1
            if player % 2 == 1 {
                //player1
                MiddleRightX.isHidden = false
                player += 1
                P2.isHidden = false
                P1.isHidden = true
            }else if player % 2 == 0 {
                //player2
                MiddleRightO.isHidden = false
                player += 1
                P2.isHidden = true
                P1.isHidden = false
            }
            print(player%2)
            Winner()
            reset(Hcounter: player)
        }
    }
    
    @IBAction func Bottom_Left(_ sender: Any) {
        if count7 == 0 {
            count7 += 1
            if player % 2 == 1 {
                //player1
                BottomLeftX.isHidden = false
                player += 1
                P2.isHidden = false
                P1.isHidden = true
            }else if player % 2 == 0 {
                //player2
                BottomLeftO.isHidden = false
                player += 1
                P2.isHidden = true
                P1.isHidden = false
            }
            print(player%2)
            Winner()
            reset(Hcounter: player)
        }
    }
    
    @IBAction func Bottom_Middle(_ sender: Any) {
        if count8 == 0 {
            count8 += 1
            if player % 2 == 1 {
                //player1
                BottomMiddleX.isHidden = false
                player += 1
                P2.isHidden = false
                P1.isHidden = true
            }else if player % 2 == 0 {
                //player2
                BottomMiddleO.isHidden = false
                player += 1
                P2.isHidden = true
                P1.isHidden = false
            }
            print(player%2)
            Winner()
            reset(Hcounter: player)
        }
    }
    
    @IBAction func Bottom_Right(_ sender: Any) {
        if count9 == 0 {
            count9 += 1
            if player % 2 == 1 {
                //player1
                BottomRightX.isHidden = false
                player += 1
                P2.isHidden = false
                P1.isHidden = true
            }else if player % 2 == 0 {
                //player2
                BottomRightO.isHidden = false
                player += 1
                P2.isHidden = true
                P1.isHidden = false
            }
            print(player%2)
            Winner()
            reset(Hcounter: player)
        }
    }
}
