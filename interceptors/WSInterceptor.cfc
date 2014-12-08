/*-----------------------------------------------------------------------

Author      :	Don Quist
Description :	Simple Interceptor WebSocketListener Remote Proxy
    
-----------------------------------------------------------------------*/
component hint="Interceptor for the WebSocketListener Remote Proxy" output="false" extends="coldbox.system.Interceptor" {

	property name="GatewayID" inject="coldbox:setting:GatewayID@websocket";

	property name="Logger" inject="logbox:logger:{this}";

    public void function configure() {}
    
	public void function onSendGatewayMessage( required Any event, required Struct interceptData ) {
		Logger.debug("onSendGatewayMessage Received", interceptData);
		sendGatewayMessage(
			GatewayID,
			interceptData
		);
	}

    public void function onClientOpen( required Any event, required Struct interceptData ) {
    	Logger.debug("onClientOpen Received", interceptData);
    }
    
    public void function onClientClose( required Any event, required Struct interceptData ) {
    	Logger.debug("onClientClose Received", interceptData);
    }
    
    public void function onMessage( required Any event, required Struct interceptData ) {
    	Logger.debug("onMessage Received", interceptData);
    }


}