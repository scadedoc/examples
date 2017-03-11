import ScadeKit

class MainPageAdapter: SCDLatticePageAdapter {

	// page adapter initialization
	override func load(_ path: String) {		
		super.load(path)
		
		// let button1 = self.page!.getWidgetByName("button1") as! SCDWidgetsButton
		//button1.onClick.append(SCDWidgetsEventHandler{ _ in self.clicked()})
		
		
		//let sidebar = self.page!.getWidgetByName("main") as! SCDWidgetsContainer
		let svg = self.page!.drawing
	
		let gestureHandler = SCDSvgSwipeGestureRecognizer { handler in
 	  		 let handlerRecognizer = handler as! SCDSvgSwipeGestureRecognizer
 	 		  print(handlerRecognizer.matchedHDirection.rawValue)
		}
		
		gestureHandler.hDirection = SCDSvgHDirection.left
		svg!.gestures.append(gestureHandler)
}
 
	
	
}
