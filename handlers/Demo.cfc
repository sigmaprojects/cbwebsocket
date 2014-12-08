component {

	property name="Logger" inject="logbox:logger:{this}";

	public void function index(event,rc,prc) {
		event.setView("demo/index");
	}

	public void function ServerToClient(event,rc,prc) {
		if( len(event.getValue('message','')) ) {
			announceInterception('onSendGatewayMessage', {message=event.getValue('message','')});
		}
		event.setView("demo/ServerToClient");
	}

	public void function ClientToServer(event,rc,prc) {
		// not implemented in this demo yet
		Logger.debug("Client Message Received");
		abort;
	}

}