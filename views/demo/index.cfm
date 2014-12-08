<script type="text/javascript">
	ws = new WebSocket("<cfoutput>#getModuleSettings('websocket').wsUrl#</cfoutput>");

	ws.onopen = function(a) {
		//do staff or send a message
		console.log(a);
		$("#logcontainer strong:first").text("Connected!  Result:");
	}

	ws.onmessage = function(message){
		console.log(message);
		$("<div>").text( message.data ).prependTo( "#log" );
		$("#log").scrollTop( 0 );
	}

	ws.onclose =  function(a){
		//do staff or send a message
		console.log(a);
		$("#logcontainer strong:first").text("Disconnected!");
	}
</script>

<div id="logcontainer" style="margin-top:2em; font-family:Arial">
	<strong></strong>
	<div id="log" style="height: 200px; width: 300px; overflow: auto;"></div>
</div>