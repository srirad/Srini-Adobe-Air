package  StarlingMVC.com.bitcrew.providers
{
	import  StarlingMVC.com.bitcrew.controllers.GameController;
	import  StarlingMVC.com.bitcrew.mediators.*;
	import  StarlingMVC.com.bitcrew.models.GameModel;
	import  StarlingMVC.comt.creativebottle.starlingmvc.beans.BeanProvider;
	
	public class GameObjectProvider extends BeanProvider
	{
		public function GameObjectProvider()
		{
			beans = [new GameModel(),
					new GameMediator(),
					new Test1Mediator(),
					new Test2Mediator(),
					new Test3Mediator(),
					new TestAddMediator(),
					new GameController()];
		}
	}
}