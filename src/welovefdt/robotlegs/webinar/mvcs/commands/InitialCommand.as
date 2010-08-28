package welovefdt.robotlegs.webinar.mvcs.commands {
	import welovefdt.robotlegs.webinar.mvcs.services.RSSServices;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author Francis Varga
	 */
	public class InitialCommand extends Command {
		
		[Inject]
		public var services:RSSServices;
		
		public function InitialCommand() {
			super();
		}

		override public function execute() : void {
			services.loadRSS("http://welovefdt.com/feed.xml");
		}
	}
}
