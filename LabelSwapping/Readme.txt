This program simulates a "label swapping" protocol that uses colors as labels.
Usually colors are shaded, we will not do that keeping stuffs simple.

How will it do that?

Well there are 4 actors in this process.

Obviously we have a Packet that will start from some source, go into some routers and arrive to endpoints.
When a new packet is created it contains no data but just its unique ID, data'll be set by sender.

Next actor is the sender : StartPoint

StartPoint generates and fills packets with random data needed for "sendPacket" function, then calls this function and sends the new packet to destination router.

Actor 3 : Router

Router takes input packets from senders (startpoint or other routers), reads packets data and forwards them on the right port.

Last actor : EndPoint

EndPoint takes input packets from senders and reads their content.
Our "label swapping" protocol is based on colors so if the EndPoint color is the same Packet color then it will be kept, otherwise discarded.

N.B. : StartPoint, EndPoint and Router are ITComponent implementations.
Any ITComponent has 7 ports used to forward packets.

This project is based on concurrency so Packets generation is handled by threads.

Timer class is set but not used.

P.S. : If you don't have Xcode and want to compile it just run from terminal ->
swiftc main.swift model/* variables/* -o main
