#SingleInstance Force
#Include Socket.ahk

F9::
Client := new SocketUDP()
Client.Connect(["127.0.0.1", "16759"]) ; connecting to server
Sleep, 100
Client.SendText("BANK-PRESS 1 2")
Sleep, 100
Client.Disconnect
return
