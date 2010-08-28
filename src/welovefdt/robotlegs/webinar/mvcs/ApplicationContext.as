package welovefdt.robotlegs.webinar.mvcs {
	import welovefdt.robotlegs.webinar.mvcs.commands.RSSServicesCommand;
	import welovefdt.robotlegs.webinar.mvcs.commands.InitialCommand;
	import welovefdt.robotlegs.webinar.mvcs.services.RSSServicesEvent;
	import welovefdt.robotlegs.webinar.mvcs.services.RSSServices;
	import welovefdt.robotlegs.webinar.mvcs.models.RSSModel;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author Francis Varga
	 */
	public class ApplicationContext extends Context {
		public function ApplicationContext(contextView : DisplayObjectContainer = null, autoStartup : Boolean = true) {
			super(contextView, autoStartup);
		}

		override public function startup() : void {
			
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, InitialCommand);
			commandMap.mapEvent(RSSServicesEvent.RSS_LOADED, RSSServicesCommand, RSSServicesEvent);
			
			injector.mapSingleton(RSSServices);
			injector.mapSingleton(RSSModel);
			
			super.startup();
		}
	}
}
