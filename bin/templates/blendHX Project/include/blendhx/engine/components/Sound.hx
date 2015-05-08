package blendhx.engine.components;

import blendhx.engine.assets.Assets;

import flash.events.Event;
import flash.media.SoundChannel;
import flash.media.SoundTransform;
	
class Sound extends Component
{
	private var sound:flash.media.Sound;
	private var soundChannel:SoundChannel;
	private var pausePosition:Float = 0;
	
	public var soundAsset:blendhx.engine.assets.Sound;
	
	public var playOnAwake:Bool = true;
	public var loop:Bool = false;
	public var is2D:Bool = true;
	public var volume:Float = 1.0;
	
	public function new()
	{
		super( "Sound" );
	}
	
	override public function dispose()
	{
		stop();
		sound = null;
		soundAsset = null;
		soundChannel = null;
		
		super.dispose();
	}
	
	override public function update():Void
	{
		if(sound != null)
			return;
			
		if(soundAsset == null)
			return;
			
		
		if( soundChannel != null)
			stop();
			
		sound = new flash.media.Sound();
		soundAsset.bytes.position = 0;
		sound.loadCompressedDataFromByteArray( soundAsset.bytes, soundAsset.bytes.length );
		
		if( playOnAwake )
			play();
	}
	override public function clone():IComponent
	{
		var copy:Sound = new Sound();
		copy.enabled = enabled;
		copy.name = name;
		copy.soundAsset = soundAsset;
		copy.playOnAwake = playOnAwake;
		copy.loop = loop;
		copy.is2D = is2D;
		copy.volume = volume;
		
		return copy;
	}
	
	public function play():Void
	{
		if(soundChannel !=null )
			return;
			
		soundChannel = sound.play( pausePosition );
		soundChannel.addEventListener( Event.SOUND_COMPLETE, soundCompleteHandler );
	}
	public function pause():Void
	{
		if( soundChannel == null)
			return;
			
		pausePosition = soundChannel.position;
		soundChannel.stop();
		soundChannel.removeEventListener( Event.SOUND_COMPLETE, soundCompleteHandler );
		soundChannel = null;
	}
	public function stop():Void
	{
		if( soundChannel == null)
			return;
			
		pausePosition = 0;
		soundChannel.stop();
		soundChannel.removeEventListener( Event.SOUND_COMPLETE, soundCompleteHandler );
		soundChannel = null;
	}
	private function soundCompleteHandler(_):Void 
	{
		stop();
		
		if( loop )
			play();
	}
	
}