package box2dstarling {
	
	import box2dstarling.ALevel;
	import box2dstarling.MyGameData;

	import citrus.core.IState;
	import citrus.core.starling.StarlingCitrusEngine;
	import citrus.utils.LevelManager;

	[SWF(frameRate="60")]
	
	/**
	 * @author Aymeric
	 */
	public class Main extends StarlingCitrusEngine {
		
		public function Main() {
			
			setUpStarling(true);
			
			gameData = new MyGameData();
			
			
			levelManager = new LevelManager(ALevel);
			levelManager.levels = [Level1, "levels/A1/LevelA1.swf"];
		/*	levelManager.onLevelChanged.add(_onLevelChanged);
			levelManager.levels = gameData.levels;
			levelManager.gotoLevel();*/
		}
		
		private function _onLevelChanged(lvl:ALevel):void {

			state = lvl;
		
			lvl.lvlEnded.add(_nextLevel);
			lvl.restartLevel.add(_restartLevel);
		}

		private function _nextLevel():void {

			levelManager.nextLevel();
		}

		private function _restartLevel():void {

			state = levelManager.currentLevel as IState;
		}
	}
}
