package welovefdt.robotlegs.webinar.mvcs.services {
	import org.robotlegs.mvcs.Actor;

	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	/**
	 * @author Francis Varga
	 */
	public class RSSServices extends Actor {
		public function RSSServices() {
			super();
		}
		public function loadRSS(rssURL : String) : void {
			var loader : URLLoader = new URLLoader();
			loader.addEventListener(Event.COMPLETE, onComplete);
			loader.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
			loader.load(new URLRequest(rssURL));
		}

		private function onComplete(event : Event) : void {
			var globalEventBus : RSSServicesEvent = new RSSServicesEvent(RSSServicesEvent.RSS_LOADED);
			globalEventBus.data = URLLoader(event.currentTarget).data;
			dispatch(globalEventBus);
		}

		private function onIOError(event : IOErrorEvent) : void {
		}
	}
}
