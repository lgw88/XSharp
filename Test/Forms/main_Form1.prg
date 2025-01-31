USING System
USING System.Collections.Generic
USING System.ComponentModel
USING System.Data
USING System.Drawing
USING System.Linq
USING System.Text
USING System.Threading.Tasks
USING System.Windows.Forms

USING XSharp.VFP.UI
// Templates/Form/StartType.prg

PUBLIC PARTIAL CLASS Form1 ;
		INHERIT XSharp.VFP.UI.Form

		
		
				

PUBLIC CONSTRUCTOR( InitParamsList ) CLIPPER
	Super( InitParamsList )
	//
	PreInitializeComponent()
	InitializeComponent()
	InitContainers()
	InitGrids()
	SetDataEnvironment()
	

PRIVATE METHOD PreInitializeComponent() AS VOID
    self:components := System.ComponentModel.Container{}
    SELF:_vfpToolTip	:=	System.Windows.Forms.ToolTip{SELF:components}
	
PRIVATE METHOD InitContainers() AS Void
	// The following lines contains EventHandlers settings for Child-elements of CustomControls
	

PRIVATE METHOD InitGrids() AS Void
	// The following lines contains settings for Columns of Grids
	

VIRTUAL METHOD SetDataEnvironment() AS VOID
	SELF:Dataenvironment := DataEnvironment{}
SELF:Dataenvironment:DataSource := .NULL.
SELF:Dataenvironment:Name := "Dataenvironment"
SELF:Dataenvironment:Init( )
SELF:FormClosing += System.Windows.Forms.FormClosingEventHandler{ SELF:Dataenvironment, @DataEnvironment.DataEnvironment_FormClosing() }
DoBindings()



	

//
METHOD Command1_Click
* VFPXPorter thisObject definition
* IsChild:True Owner:Command1 Block:Click
VAR thisObject := Command1

MESSAGEBOX(thisform.Text1.Value)
END METHOD


//
METHOD cmdQuit_Click
* VFPXPorter thisObject definition
* IsChild:True Owner:cmdQuit Block:Click
VAR thisObject := cmdQuit

CLEAR EVENTS
thisform.Release()

END METHOD







	END CLASS
