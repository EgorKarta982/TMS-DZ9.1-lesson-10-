import UIKit

class ViewController: UIViewController {
    private var myCircle = UIView()
    let side: CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCircle.frame = CGRect(x: self.view.frame.width / 2, y: self.view.frame.height / 2, width: side, height: side)
        myCircle.backgroundColor = .blue
        myCircle.layer.cornerRadius = myCircle.frame.width / 2
        self.view.addSubview(myCircle)
        
        
        let panGasture = UIPanGestureRecognizer(target: self, action: #selector(moveCircle))
        self.myCircle.addGestureRecognizer(panGasture)
    }
    
    @IBAction func moveCircle(recognizer: UIPanGestureRecognizer){
        let translation = recognizer.translation(in: self.view)
        print(translation)
        myCircle.center = CGPoint(x: myCircle.center.x + translation.x, y: myCircle.center.y + translation.y)
        recognizer.setTranslation(CGPoint(x: 0, y: 0), in: self.view)
        
    }
    
}


