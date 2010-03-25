package com.telecoms.media.speakerLTELA.control.delegates
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	public class LoadSpeakerDelegate
	{
		private var __locator:ServiceLocator = ServiceLocator.getInstance();
		private var __service:HTTPService;
		private var __responder:IResponder;
		
		public function LoadSpeakerDelegate(responder:IResponder)
		{
			__service = __locator.getHTTPService("speakerRetrieve");
			__responder = responder;
		}
		
		public function loadRecipes():void
		{
			var token:AsyncToken = __service.send();
			token.addResponder(__responder);
		}
	}
}