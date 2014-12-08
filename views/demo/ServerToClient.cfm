<cfoutput>
<br />
<form action="#event.buildLink('websocket:demo.ServerToClient')#">
	<legend>
		Send a simple message to the gateway.
	</legend>
	<cfif len(trim(event.getValue('message','')))>
		<div stye="color:red">
			Message sent
		</div>
		<hr />
	</cfif>
	<div>
		<label for="message">Message: </label>
		<input id="message" name="message" value="#event.getValue('message','')#">
	</div>
	<button type="submit">Send</button>
</form>

</cfoutput>