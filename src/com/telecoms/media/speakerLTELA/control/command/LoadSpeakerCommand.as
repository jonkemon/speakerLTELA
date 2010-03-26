package com.telecoms.media.speakerLTELA.control.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.telecoms.media.speakerLTELA.control.delegates.LoadSpeakerDelegate;
	import com.telecoms.media.speakerLTELA.control.events.speaker.SpeakerLoadedEvent;
	import com.telecoms.media.speakerLTELA.model.speakerModelLocator;
	
	import mx.controls.Alert;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class LoadSpeakerCommand implements ICommand
	{		
		private var model:speakerModelLocator = speakerModelLocator.getInstance();
		public function execute(event:CairngormEvent):void
		{
			var responder:Responder = new Responder(onResults,onFault);
			var delegate:LoadSpeakerDelegate = new LoadSpeakerDelegate(responder);
			delegate.loadRecipes();
		}
		private function onFault(event:FaultEvent):void
		{
			Alert.show('No speakers were found...');
		}
		private function onResults(event:ResultEvent):void
		{
			model.speakerList = event.token.result as XML;
		}
	}
}