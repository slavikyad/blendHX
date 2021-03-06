package blendhx.editor.ui.contextMenu;

import blendhx.editor.ui.controls.ControlBase;
import blendhx.editor.ui.controls.ContextMenuButton;
import blendhx.editor.ui.controls.ImageButton;
import blendhx.editor.ui.HierarchyItem;

import blendhx.editor.events.ComponentEvent;
import blendhx.editor.events.HierarchyEvent;


import flash.events.Event;


class EntityContextMenu extends ContextMenu
{
	
	public function new() 
	{
		super();
		addUIComponent( new Seperator() );
		
		new ContextMenuButton("New Entity", 0, newEntity, this, 1, 1, ControlBase.ROUND_NONE, ImageButton.ADD);
		new ContextMenuButton("Delete                         Del", 0, deleteSelected, this, 1, 1, ControlBase.ROUND_NONE, ImageButton.REMOVE);
		new ContextMenuButton("Rename                      F2", 0, renameSelected, this, 1, 1);
		new ContextMenuButton("Duplicate          Shift + D", 0, duplicateSelected, this, 1, 1);
		
		addUIComponent( new Seperator() );
		
		new ContextMenuButton("Add Camera", 0, addCamera, this);
		new ContextMenuButton("Add MeshRenderer", 0, addMeshRenderer, this);
		new ContextMenuButton("Add Sound", 0, addSound, this);
		new ContextMenuButton("Add Lamp", 0, addLamp, this);
		
		addUIComponent( new Seperator() );
			
		resize();
	}
	
	private function newEntity()
	{
		var e:HierarchyEvent = new HierarchyEvent(HierarchyEvent.NEW);
		dispatchEvent(e);
		//e.dispose();
		
		dispose();
		
	}
	
	private function duplicateSelected()
	{
		var e:HierarchyEvent = new HierarchyEvent(HierarchyEvent.DUPLICATE);
		dispatchEvent(e);
		//e.dispose();
		
		dispose();
	}
	
	private function deleteSelected()
	{
		var e:HierarchyEvent = new HierarchyEvent(HierarchyEvent.DELETE);
		dispatchEvent(e);
		//e.dispose();
		
		dispose();
	}
	
	private function renameSelected()
	{
		var e:HierarchyEvent = new HierarchyEvent(HierarchyEvent.RENAME_REQUEST);
		dispatchEvent(e);
		//e.dispose();
		
		dispose();
	}
	
	private function addCamera()
	{
		var e:ComponentEvent = new ComponentEvent(ComponentEvent.NEW);
		e.sourceURL = "Camera";
		dispatchEvent(e);
		//e.dispose();
		
		dispose();
	}
	
	private function addMeshRenderer()
	{
		var e:ComponentEvent = new ComponentEvent(ComponentEvent.NEW);
		e.sourceURL = "MeshRenderer";
		dispatchEvent(e);
		//e.dispose();
		
		dispose();
	}
	
	private function addSound()
	{
		var e:ComponentEvent = new ComponentEvent(ComponentEvent.NEW);
		e.sourceURL = "Sound";
		dispatchEvent(e);
		//e.dispose();
		
		dispose();
	}
	
	private function addLamp()
	{
		var e:ComponentEvent = new ComponentEvent(ComponentEvent.NEW);
		e.sourceURL = "Lamp";
		dispatchEvent(e);
		//e.dispose();
		
		dispose();
	}
}