package welovefdt.robotlegs.webinar.mvcs.services {
	import flash.events.Event;

	/**
	 * @author Francis Varga
	 */
	public class RSSServicesEvent extends Event {
		public static const RSS_LOADED : String = "RSS_LOADED";
		public static const RSS_PARSED : String = "RSS_PARSED";
		public var data : *;
		public function RSSServicesEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
			super(type, bubbles, cancelable);
		}
	}
}
