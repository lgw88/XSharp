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
	SUPER( InitParamsList )
	//
	PreInitializeComponent()
	InitializeComponent()
	InitContainers()
	InitGrids()
	SetDataEnvironment()


PRIVATE METHOD PreInitializeComponent() AS VOID
    SELF:components := System.ComponentModel.Container{}
    SELF:_vfpToolTip	:=	System.Windows.Forms.ToolTip{SELF:components}

PRIVATE METHOD InitContainers() AS VOID
	// The following lines contains EventHandlers settings for Child-elements of CustomControls


PRIVATE METHOD InitGrids() AS VOID
	// The following lines contains settings for Columns of Grids


VIRTUAL METHOD SetDataEnvironment() AS VOID
	SELF:Dataenvironment := Dataenvironment{}
SELF:Dataenvironment:DataSource := .NULL.
SELF:Dataenvironment:Name := "Dataenvironment"
SELF:Dataenvironment:Init( )
SELF:FormClosing += System.Windows.Forms.FormClosingEventHandler{ SELF:Dataenvironment, @Dataenvironment.DataEnvironment_FormClosing() }
DoBindings()





//
METHOD Command1_Click
* VFPXPorter thisObject definition
* IsChild:True Owner:Command1 Block:Click
VAR thisObject := Command1

MESSAGEBOX(thisform.Text1.Value)
*ACTIVATE SCREEN
CREATE CURSOR aaa (A1 I , A2 C(10))
INSERT INTO aaa (A1,A2) VALUES (1,"abc")
 thisform.Text1.Value = aaa.a2

*BROWSE
USE IN aaa
END METHOD


//
METHOD cmdQuit_Click
* VFPXPorter thisObject definition
* IsChild:True Owner:cmdQuit Block:Click
VAR thisObject := cmdQuit

CLEAR EVENTS
thisform.Release()

END METHOD
    PRIVATE METHOD Command1_Click(sender AS System.Object, e AS System.EventArgs) AS VOID STRICT
        RETURN
    END METHOD







	END CLASS 
