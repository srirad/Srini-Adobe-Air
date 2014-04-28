package POSSystem
{
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.TouchEvent;
	
	/**
	 * ...
	 * @author Srini
	 */
	public class MainPage extends Sprite
	{
		private var q:Quad;
		
		public function MainPage()
		{
				addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		
		private function onAdded(e:Event):void
		{
			q = new Quad(stage.stageWidth, stage.stageHeight);
			q.setVertexColor(0, 0x000000);
			q.setVertexColor(1, 0xAA0000);
			q.setVertexColor(2, 0x00FF00);
			q.setVertexColor(3, 0x0000FF);
			addChild(q); 
		}
	
	}

}