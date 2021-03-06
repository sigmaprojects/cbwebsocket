cbwebsocket
===========
####ColdBox module for the Railo WebSocket Gateway Extension

Using the very cool [WebSocket extension](https://github.com/getrailo/railo/wiki/extensions-websockets_gateway) for Railo, I created this skeleton module to act as a data controller. 

Every listener event detailed in the gateway config is mirrored in the module and is captured using the WSInterceptor.cfc interception points.  
You can modify the interceptor, or simply listen for the same interception points in your own application since they all get executed.

The cool part of this is ColdBox's Remote Proxy functionality, we're able to offload the worry of associating the WebSocket gateway in our ColdBox application context.  When creating your gateway, point the listener to cbwebsocket.remote.WebSocketListener and bingo bango you should be up and running.

If there are any issues make sure to check your logs.

## Installation Instructions:
1. Install WebSocket extension
2. Creating an Application Mapping in Railo Administrator to point to this module directory
3. Create a WebSocket Gateway, and in the listener field point it {mapping}.remote.WebSocketListener
4. Edit the ModuleConfig.cfc settings for GatewayID and WSUrl
5. Make sure your ColdBox application is running first, then start the gateway.
6. Open 1 browser tab to http://localhost/index.cfm?event=websocket:demo.index 
7. Open 2nd browser tab to http://localhost/index.cfm?event=websocket:demo.ServerToClient
8. If everything went smoothly, the demo will run.  Send a message using ServerToClient and see the result on the other tab.
