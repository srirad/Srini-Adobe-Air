package
{
	//import flash.desktop.NativeApplication;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import starling.core.Starling;
	/**
	 * ...
	 * @author Srini
	 */
	
	[SWF(width="1280",height="752",frameRate="60",backgroundColor="#002143")]
	
	public class Main extends Sprite
	{
		private  var _starling:Starling;
		
		public function Main():void
		{
			Starling.multitouchEnabled = true;
			// This time we won't scale our application (check next post for that :).
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			// Trigger an event handler when application looses focus (see note in handler).
			//	stage.addEventListener(Event.DEACTIVATE, deactivate);
			
			SetupStarling();
		}
		
		private function SetupStarling():void
		{
			// stats class for fps
			addChild(new Stats());
			// Create a new instance and pass our class and the stage
			_starling = new Starling(Game, stage);
			
			// Show debug stats
			_starling.showStats = true;
			
			// Define level of antialiasing, 
			_starling.antiAliasing = 1;
			// emulate multi-touch
			_starling.simulateMultitouch = true;
			
			_starling.start();
		}
	
	}

}