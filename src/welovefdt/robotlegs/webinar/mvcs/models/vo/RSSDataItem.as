package welovefdt.robotlegs.webinar.mvcs.models.vo {
	/**
	 * @author Francis Varga
	 */
	public class RSSDataItem {
		private var _title : String;
		private var _description : String;
		private var _link : String;
		private var _author : String;
		private var _pubData : String; 

		public function get title() : String {
			return _title;
		}

		public function set title(title : String) : void {
			_title = title;
		}

		public function get description() : String {
			return _description;
		}

		public function set description(description : String) : void {
			_description = description;
		}

		public function get link() : String {
			return _link;
		}

		public function set link(link : String) : void {
			_link = link;
		}

		public function get author() : String {
			return _author;
		}

		public function set author(author : String) : void {
			_author = author;
		}

		public function get pubData() : String {
			return _pubData;
		}

		public function set pubData(pubData : String) : void {
			_pubData = pubData;
		}
		/*
		 * <title><![CDATA[Using SWCs within AIR packaging with ANT]]></title> 
		<description><![CDATA[In addition to AIR2 and FDT4 (M3) – A detailed Walkthrough I
encountered a problem when trying to use external SWCs like e.g. an
assets library in your AIR package. In other words: If you're using an
SWC with all your graphical stuff exported from the Flash IDE you
simply rightclick it in FDT and ]]></description> 
		<link>http://feedproxy.google.com/~r/beautifycode/~3/OkNuDpFAxhA/using-swcs-within-air-packaging-with-ant</link> 
		<author>Marvin Blase</author> 
		<pubDate>Fri, 13 Aug 2010 14:30:47 +0200</pubDate> 
		 * 
		 * 
		 */
		
	}
}
