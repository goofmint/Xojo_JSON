#tag Window
Begin Window Window1
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1473613823
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "名称未設定"
   Visible         =   True
   Width           =   600
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim json as JSON = new JSON(swagger)
		  
		  System.DebugLog(json.s("swagger"))
		  
		  System.DebugLog(json.o("info").s("description"))
		  
		  Dim childJson() as JSON = json.o("paths").o("/pet").o("post").a("tags")
		  System.DebugLog(childJson(0).s())
		  
		  System.DebugLog(json.o("paths").o("/pet").o("post").a("tags", 0).s())
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

