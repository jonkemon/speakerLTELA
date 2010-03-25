package com.telecoms.media.speakerLTELA.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.telecoms.media.speakerLTELA.control.command.LoadSpeakerCommand;
	import com.telecoms.media.speakerLTELA.control.command.SpeakerLoadedCommand;
	import com.telecoms.media.speakerLTELA.control.command.SpeakerNumberUpdateCommand;
	import com.telecoms.media.speakerLTELA.control.events.speaker.LoadSpeakerEvent;
	import com.telecoms.media.speakerLTELA.control.events.speaker.SpeakerLoadedEvent;
	import com.telecoms.media.speakerLTELA.control.events.speaker.SpeakerNumberUpdateEvent;

	public class PTController extends FrontController
	{
		public function PTController()
		{
			super();
			addCommand(LoadSpeakerEvent.EVENT_ID, LoadSpeakerCommand);
			addCommand(SpeakerNumberUpdateEvent.EVENT_ID, SpeakerNumberUpdateCommand);
			addCommand(SpeakerLoadedEvent.EVENT_ID, SpeakerLoadedCommand);
		}
		
	}
}