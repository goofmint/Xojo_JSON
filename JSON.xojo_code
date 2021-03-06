#tag Class
Protected Class JSON
	#tag Method, Flags = &h0
		Function a(key as String = "") As JSON()
		  Dim child_json as JSONItem
		  if key <> "" then
		    child_json = Self.jsonItem.Value(key)
		  else
		    child_json = Self.jsonItem
		  end if
		  
		  if child_json.IsArray then
		    Dim results() as JSON
		    For i as Integer = 0 To child_json.Count - 1
		      Dim obj as JSON = new JSON(child_json(i))
		      results.Append(obj)
		    Next
		    return results
		  else
		    Dim e As New Xojo.Data.InvalidJSONException
		    e.Message = "This is not Array."
		    Raise e
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function a(key as String = "", index as Integer) As JSON
		  Dim child_json as JSONItem
		  if key <> "" then
		    child_json = Self.jsonItem.Value(key)
		  else
		    child_json = Self.jsonItem
		  end if
		  
		  if child_json.IsArray then
		    Dim obj as JSON = new JSON(child_json(index))
		    return obj
		  else
		    Dim e As New Xojo.Data.InvalidJSONException
		    e.Message = "This is not Array."
		    Raise e
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function b(key as String = "") As Boolean
		  // if Self.json_boolean <> Nil then
		  // return Self.json_boolean
		  // end if
		  
		  Dim child_json as Variant
		  if key <> "" then
		    child_json = Self.jsonItem.Value(key)
		  else
		    child_json = Self.jsonItem
		  end if
		  
		  Select Case Xojo.Introspection.GetType(child_json)
		  Case GetTypeInfo(Boolean)
		    Dim bol as Boolean = child_json
		    return bol
		  Else
		    Dim e As New Xojo.Data.InvalidJSONException
		    e.Message = "This is not Boolean."
		    Raise e
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub constructor(json as Variant)
		  Dim json_item as JSONItem
		  Select Case Xojo.Introspection.GetType(json)
		  Case GetTypeInfo(JSONItem)
		    Self.jsonItem = json
		  Case GetTypeInfo(String)
		    Try
		      Self.jsonItem = new JSONItem(json)
		    Catch e as JSONException
		      Self.json_string = json
		    End Try
		  Case GetTypeInfo(Double)
		    Self.json_number = json
		  Case GetTypeInfo(Boolean)
		    Self.json_boolean = json
		  End Select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function n(key as String = "") As Double
		  // if Self.json_number <> Nil then
		  // return Self.json_number
		  // end if
		  
		  Dim child_json as Variant
		  if key <> "" then
		    child_json = Self.jsonItem.Value(key)
		  else
		    child_json = Self.jsonItem
		  end if
		  
		  
		  Select Case Xojo.Introspection.GetType(child_json)
		  Case GetTypeInfo(Double)
		    Dim number as Double = child_json
		    return number
		  Else
		    Dim e As New Xojo.Data.InvalidJSONException
		    e.Message = "This is not Double."
		    Raise e
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function o(key as String = "") As JSON
		  Dim child_json as JSONItem
		  if key <> "" then
		    child_json = Self.jsonItem.Value(key)
		  else
		    child_json = Self.jsonItem
		  end if
		  
		  return new JSON(child_json)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function s(key as String = "") As String
		  if Self.json_string <> "" then
		    return Self.json_string
		  end if
		  
		  Dim chid_json as Variant
		  if key <> "" then
		    chid_json = Self.jsonItem.Value(key)
		  else
		    chid_json = Self.jsonItem
		  end if
		  
		  Select Case Xojo.Introspection.GetType(chid_json)
		  Case GetTypeInfo(String)
		    Dim str as String = chid_json
		    return str
		  Else
		    Dim e As New Xojo.Data.InvalidJSONException
		    e.Message = "This is not string."
		    Raise e
		  End Select
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		jsonItem As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		json_boolean As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		json_number As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		json_string As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="json_string"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
