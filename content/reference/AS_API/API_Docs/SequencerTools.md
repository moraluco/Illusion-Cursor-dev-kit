# SequencerTools

## Inheritance

SequencerTools

## Description

EDITOR SCRIPTING | SEQUENCER TOOLS GetObjectBindings static TArray<FSequencerBoundObjects> SequencerTools::GetObjectBindings(

UWorld 	InWorld, ULevelSequence 	InSequence, TArray<UObject> 	InObject, FSequencerScriptingRange 	InRange

)

Get the object bindings for the requested object. The sequence will be evaluated in lower bound of the specified range, which allows for retrieving spawnables in that period of time.

GetBoundObjects static TArray<FSequencerBoundObjects> SequencerTools::GetBoundObjects(

UWorld 	InWorld, ULevelSequence 	InSequence, TArray<FSequencerBindingProxy> 	InBindings, FSequencerScriptingRange 	InRange

)

Retrieve all objects currently bound to the specified binding identifiers. The sequence will be evaluated in lower bound of the specified range, which allows for retrieving spawnables in that period of time.

EDITOR SCRIPTING | SEQUENCER TOOLS | ANIMATION ExportAnimSequence static bool SequencerTools::ExportAnimSequence( UWorld 	World, ULevelSequence 	Sequence, UAnimSequence 	AnimSequence, UAnimSeqExportOption 	ExportOption, FSequencerBindingProxy 	Binding 	)

Export Passed in Binding as an Anim Seqquence.

@InWorld World to export @InSequence Sequence to export @AnimSequence The AnimSequence to save into.  @ExportOption The export options for the sequence.  @InBinding Binding to export that has a skelmesh component on it @InAnimSequenceFilename File to create

CreateEvent static FMovieSceneEvent SequencerTools::CreateEvent( UMovieSceneSequence 	InSequence, UMovieSceneEventSectionBase 	InSection, FSequencerQuickBindingResult 	InEndpoint, TArray<FString> 	InPayload 	)

Create an event from a previously created blueprint endpoint and a payload. The resulting event should be added only to a channel of the section that was given as a parameter.

Parameters InSequence UMovieSceneSequence

Main level sequence that holds the event track and to which the resulting event should be added.

InSection UMovieSceneEventSectionBase

Section of the event track of the main sequence.

InEndpoint FSequencerQuickBindingResult

Previously created endpoint.

InPayload TArray<FString>

Values passed as payload to event, count must match the numbers of payload variable names in

Returns

The created movie event.

CreateQuickBinding static FSequencerQuickBindingResult SequencerTools::CreateQuickBinding(

UMovieSceneSequence 	InSequence, UObject 	InObject, FString 	InFunctionName, bool 	bCallInEditor

)

Create a quick binding to an actor's member method to be used in an event sequence.

Parameters InFunctionName FString

Name of the method, as it is displayed in the Blueprint Editor. eg. "Set Actor Scale 3D"

bCallInEditor bool

Should the event be callable in editor.

Returns

The created binding.

IsEventEndpointValid static bool SequencerTools::IsEventEndpointValid( FSequencerQuickBindingResult 	InEndpoint 	)

Check if an endpoint is valid and can be used to create movie scene event.

Parameters InEndpoint FSequencerQuickBindingResult

Endpoint to check.

EDITOR SCRIPTING | SEQUENCER TOOLS | FBX ImportFBXToControlRig static bool SequencerTools::ImportFBXToControlRig(

UWorld 	World, ULevelSequence 	InSequence, FString 	ActorWithControlRigTrack, TArray<FString> 	SelectedControlRigNames, UMovieSceneUserImportFBXControlRigSettings 	ImportFBXControlRigSettings, FString 	ImportFilename

)

Import FBX onto a control rig with the specified track name

@InWorld World to import to @InSequence InSequence to import @ActorWithControlRigTrack ActorWithControlRigTrack The name of the actor with the control rig track we are importing onto @SelectedControlRigNames  List of selected control rig names. Will use them if  ImportFBXControlRigSettings->bImportOntoSelectedControls is true @ImportFBXControlRigSettings Settings to control import.  @InImportFileName Path to fbx file to create

ImportLevelSequenceFBX static bool SequencerTools::ImportLevelSequenceFBX(

UWorld 	InWorld, ULevelSequence 	InSequence, TArray<FSequencerBindingProxy> 	InBindings, UMovieSceneUserImportFBXSettings 	InImportFBXSettings, FString 	InImportFilename

)

Import FBX onto Passed in Bindings

@InWorld World to import to @InSequence InSequence to import @InBindings InBindings to import @InImportFBXSettings Settings to control import.  @InImportFileName Path to fbx file to import from @InPlayer Player to bind to

ExportLevelSequenceFBX static bool SequencerTools::ExportLevelSequenceFBX( UWorld 	InWorld, ULevelSequence 	InSequence, TArray<FSequencerBindingProxy> 	InBindings, TArray<UMovieSceneTrack> 	InMasterTracks, UFbxExportOption 	OverrideOptions, FString 	InFBXFileName 	)

Export Passed in Bindings and Master Tracks to FBX

@InWorld World to export @InSequence Sequence to export @InBindings Bindings to export @InMasterTracks Master tracks to export @InFBXFileName File to create

EDITOR SCRIPTING | SEQUENCER TOOLS | MOVIE RENDERING CancelMovieRender static void SequencerTools::CancelMovieRender()

Attempts to cancel an in-progress Render to Movie. Does nothing if there is no render in progress.

IsRenderingMovie static bool SequencerTools::IsRenderingMovie()

Returns if Render to Movie is currently in progress.

RenderMovie static bool SequencerTools::RenderMovie(

UMovieSceneCapture 	InCaptureSettings, FOnRenderMovieStopped 	OnFinishedCallback	 = 	FOnRenderMovieStopped ( )

)

Attempts to render a sequence to movie based on the specified settings. This will automatically detect if we're rendering via a PIE instance or a new process based on the passed in settings. Will return false if the state is not valid (ie: null or missing required parameters, capture in progress, etc.), true otherwise.
