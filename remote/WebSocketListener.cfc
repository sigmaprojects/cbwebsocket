/*-----------------------------------------------------------
Author		:	Don Quist
Description	:	Proxy object to handle incomming requests from the WebSocketListener
Documentation:	https://github.com/getrailo/railo/wiki/extensions-websockets_gateway
This is what you point your Gateway Listener cfc to 
-----------------------------------------------------------*/

component name="WebSocketListener" output="false" extends="coldbox.system.remote.ColdboxProxy" {
	

	public void function onClientOpen(Struct data){
		announceInterception( state="onClientOpen", interceptData=data );
	}

	public void function onClientClose(Struct data){
		announceInterception( state="onClientClose", interceptData=data );
	}

	public void function onMessage(Struct data){
		announceInterception( state="onClientClose", interceptData=data );
		
	}

}