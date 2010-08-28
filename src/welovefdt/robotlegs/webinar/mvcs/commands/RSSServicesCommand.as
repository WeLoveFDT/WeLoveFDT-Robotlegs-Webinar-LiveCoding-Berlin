package welovefdt.robotlegs.webinar.mvcs.commands {
	import welovefdt.robotlegs.webinar.mvcs.models.RSSModel;
	import welovefdt.robotlegs.webinar.mvcs.models.vo.RSSDataItem;
	import welovefdt.robotlegs.webinar.mvcs.services.RSSServicesEvent;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Francis Varga
	 */
	public class RSSServicesCommand extends Command {
		
		[Inject]
		public var event : RSSServicesEvent;
		
		[Inject]
		public var model : RSSModel;
		
		override public function execute() : void {
			
			_parseRSSXML(event.data);

			dispatch(new RSSServicesEvent(RSSServicesEvent.RSS_PARSED));
		}

		private function _parseRSSXML(xmlObj : Object):void {
			var xmlList : XMLList = new XMLList();
			xmlList = new XML(xmlObj)["channel"]["item"];
			for (var i : int = 0; i < xmlList.length(); i++) {
				var rssItem : RSSDataItem = new RSSDataItem();
				rssItem.title = xmlList[i]["title"];
				rssItem.pubData = xmlList[i]["pubData"];
				rssItem.link = xmlList[i]["link"];
				model.addItem(rssItem);
			}
		}
			
	}
}
