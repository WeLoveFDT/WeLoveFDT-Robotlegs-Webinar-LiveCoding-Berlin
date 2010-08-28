package welovefdt.robotlegs.webinar.mvcs.views {
	import welovefdt.robotlegs.webinar.mvcs.models.RSSModel;
	import welovefdt.robotlegs.webinar.mvcs.services.RSSServicesEvent;

	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author Marvin
	 */
	public class ItemViewMediator extends Mediator {
		[Inject]
		public var rssmodel:RSSModel;
		
		[Inject]
		public var view:ItemView;

		override public function onRegister() : void {
			addContextListener(RSSServicesEvent.RSS_PARSED, initializeView);
		}

		private function initializeView(event:RSSServicesEvent) : void {
			view.init();
			
			for (var i:int = 0; i < rssmodel.length; i++) {
				view.addItem(rssmodel.getItemAt(i));
			}
		}
	}
}
