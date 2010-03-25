package com.telecoms.media.speakerLTELA.model
{
	
	[Bindable]
	public class speakerModelLocator
	{
		static public var __instance:speakerModelLocator=null;
		public var speakerList:XML = new XML;
		public var spkNum:int = 0;
		static public function getInstance():speakerModelLocator
		{
			if(__instance == null)
			{
				__instance = new speakerModelLocator();
			}
			return __instance;
		}
	}	
}