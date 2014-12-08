cbwebsocket
===========
####ColdBox module for the Railo WebSocket Gateway Extension

Using the very cool [WebSocket extension](https://github.com/getrailo/railo/wiki/extensions-websockets_gateway) for Railo, I created this skeleton module to act as a data controller. 

Every listener event detailed in the gateway config is mirrored in the module and is captured using the WSInterceptor.cfc interception points.  
You can modify the interceptor, or simply listen for the same interception points in your own application since they all get executed.

The cool part of this is because ColdBox's Remote Proxy functionality, we're able to offload the worry of associating the WebSocket gateway in our ColdBox application.  When creating your gateway, point the listener to cbwebsocket.remote.WebSocketListener and bingo bango you should be up and running.

If there are any issues make sure to check your logs.
