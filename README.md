BlendHX
Created with Haxe, a game engine and IDE on top of AIR capabilities.


![alt text](http://igloo.ir/blendhx.png)
Get the latest build:
https://github.com/mehdadoo/blendHX/raw/master/binaries/blendHX_v0.5.exe




We are re-writing some part of the core library at the moment. Stay tuned!


Notes for myself:

beta v0506
---------------------------------
✓ Load IMAP error : Registered All loaded class aliases, seemed EventDispatcher event Map list was the problem. The list of classes to be minimized later. 
✓ Material Class alias load error
✓ Rename game objects
✓ Rename assets
✓ Scripts panel
✓ Material panel
✓ play/edit mode
✓ export
✓ Editor grid
✓ delete used asset, error
✓ add script could wrongly add a shader, check
✓ reparent camera
✓ Undo/Redo
	✓ Keyboard shortcuts:
	✓ ProjectUndoCommand
	✓ ProjectRedoCommand
	✓ EntityDeleteCommand
	✓ EntityRenameCommand
	✓ AssetsRenameCommand
	✓ ProjectReloadScriptsCommand
	✓ ProjectPlayModeCommand
	✓ ProjectHelpCommand
	✓ ProjectEditModeCommand
	✓ ProjectSaveCommand
	✓ Material, Script change undo
	✓ Play/Edit mode, does not support undo because entities are loaded from clone, should be reversed


Known issues:
✓ ! Component enable/disable initialize/uninitialize fix (Not valid for the current small code base)
! rename texture is not reflected in a material
! Context3D un-recoverably lost
property panels dispatch update model twice it seems, check
Transform component should be revised to something standard, or simply make sure it is not made-up now. Transform supprts only one level of parent to translate the position
Command undo/redo might cause a problem when another commands is added in between



v1
--------------------------------
	Engine features:
light component
light shaders
collidor component
rigid body component
animation system
animation component
prefabs
shadows
physics system
actionscript
particle component
particle system
2D component
2D renderer
image effects
skybox shader/assets
export to apk
export to ios
export air
lightmapping

	Editor features:
collapse in hierarchy support undo(needed really?)
undo support Assets as much as possible
disposed commands properly dispose the game objects removed, depending they were done or undone or redone
command undo history should be limited, and dispose the removed commands
settings panel to contain:target size, fps, undo history steps
folder rename
FileItem folder drag fileItem re-parent folder
TextInput character selection
Space scroll bars
assets/hierarchy search
scene camera navigation
scene placement and rotation,scale,transformation tools
copy asset
highlight selected mesh
texture import panel
mesh import panel
multi select assets, entities
import multiple files
.blend importer
animation import