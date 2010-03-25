package com.telecoms.media.speakerLTELA.control.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.telecoms.media.speakerLTELA.model.speakerModelLocator;
	import flash.external.ExternalInterface;
	
	import mx.controls.Alert;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class SpeakerNumberUpdateCommand implements ICommand
	{		
		private var model:speakerModelLocator = speakerModelLocator.getInstance();
		public function execute(event:CairngormEvent):void
		{
			trace(model.spkNum);
			trace(model.speakerList.speaker.length());
			if(model.spkNum==model.speakerList.speaker.length())
				{
					model.spkNum = 0;
				}
			else{
			++model.spkNum;
			}
		}
	}
}