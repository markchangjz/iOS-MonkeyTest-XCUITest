import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	func drawPoint(at position: CGPoint, withColor color: UIColor) {
		let v = UIView(frame: CGRect(origin: CGPoint(x: 0.0, y: 0.0), size: CGSize(width: 5.0, height: 5.0)))
		v.layer.masksToBounds = true
		v.layer.cornerRadius = v.frame.size.height / 2.0
		v.backgroundColor = color
		v.center = CGPoint(x: position.x, y: position.y)
		self.view.addSubview(v)
	}

	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		if let touch = touches.first {
			let position = touch.location(in: self.view)
			drawPoint(at: position, withColor: UIColor.red)
		}
	}
	
	override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
		if let touch = touches.first {
			let position = touch.location(in: self.view)
			drawPoint(at: position, withColor: UIColor.blue)
		}
	}
	
	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		if let touch = touches.first {
			let position = touch.location(in: self.view)
			drawPoint(at: position, withColor: UIColor.green)
		}
	}
}

