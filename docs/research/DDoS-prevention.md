This document outlines our research on DDoS prevention strategies.

DDOS attack is type of attack, which causes performance issue to a server, or even sometimes it causes a server to stop functioning. The victims of DDOS attacks are usually servers that provies inbound and outbound traffics. Also, interfaces that are invovled in exchagenging information throughout the Internet, can be the target of the attacks. DDoS attack is launched from numerous compromised devices, often distributed globally in what is referred to as a botnet.

Ahead to mitigating the DDOS attacks, the hardware/software systems must be optimized precisely. At software level, consider the following cases for the sake of optimization:

The C10k problem is the problem of optimising network sockets to handle a large number of clients at the same time.

OWASP Top Ten Cheat Sheet https://www.owasp.org/index.php/OWASP_Top_Ten_Cheat_Sheet

OWASP Mobile security awareness https://www.owasp.org/index.php/Mobile_Top_10_2016-Top_10

At hardware level, consider the following cases for the sake of optimization:

Use loadbalancers to distribute the load of requests.
Consider using Round-robin DNS, which returns multiple IP addresses and the user will connect to one of those IP addresses. 

Actively check/monitor servers to allow/disallow bots, crawlers. Sometimes, companies that are collecting statistical data about a website/webservice, are sending too many requests that causes performance issues.

To undrestand DDos attacks, it is wise to abstract down the attacks to the layers of OSI (Open Systems Interconnection) model.
![Alt text](https://s-media-cache-ak0.pinimg.com/originals/55/53/bd/5553bdf0a193142af2976db02c4bb920.gif?raw=true "OSI MODEL")

A Layer 7 DoS attack is often perpetrated through the use of HTTP GET. The attacker looks like a legitimate connection, and is therefore passed on to the web or application server. The attacker begins requesting large numbers of files/objects using HTTP GET. That the server quickly becomes focused on responding to those requests and has a hard time responding to new, legitimate requests.  
An HTTP flood attack is a type of Layer 7 application attack that utilizes the standard valid GET/POST requests used to fetch information, as in typical URL data retrievals (images, information, etc.) during SSL sessions. An HTTP GET/POST flood is a volumetric attack that does not use malformed packets, spoofing or reflection techniques. 
When rate-limiting was used to stop this type of attack, the bad guys moved to using a distributed system of bots (zombies) to ensure that the requests (attack) was coming from myriad IP addresses and was therefore not only more difficult to detect, but more difficult to stop. The attacker uses malware and trojans to deposit a bot on servers and clients, and then remotely includes them in his attack by instructing the bots to request a list of objects from a specific site or server. The attacker might not use bots, but instead might gather enough evil friends to launch an attack against a site that has annoyed them for some reason. 
Layer 7 DoS attacks are more difficult to detect because the TCP connection is valid and so are the requests. Application monitoring is the practice of monitoring software applications using a dedicated set of algorithms, technologies, and approaches to detect zero day and application layer (Layer 7 attacks). Once identified these attacks can be stopped and traced back to a specific source more easily than other types of DDoS attacks.
layer 7 firewall (application firewall) gets smarter about stopping layer 7 DoS attacks without affecting legitimate clients. It is a subtle dance and requires a bit more understanding of the application and its flow, but if implemented correctly it can improve the ability of such devices to detect and prevent layer 7 DoS attacks from reaching web and application servers and taking a site down.

Example of attacks that target transport layer is SYN Flood. SYN Flood works by establishing half-open connections to a node. When the target receives a SYN packet to an open port, the target will respond with a SYN-ACK and try to establish a connection. However, during a SYN flood, the three-way handshake never completes because the client never responds to the server's SYN-ACK. As a result, these "connections" remain in the half-open state until they time out. 
Reach bandwidth or connection limits of hosts or networking equipment. DDoS attack blocking, commonly referred to as blackholing, is a method typically used by ISPs to stop a DDoS attack on one of its customers. This approach to block DDoS attacks makes the site in question completely inaccessible to all traffic, both malicious attack traffic and legitimate user traffic. Black holding is typically deployed by the ISP to protect other customers on its network from the adverse effects of DDoS attacks such as slow network performance and disrupted service.

Layer 3 infrastructure DDoS attack method uses ICMP messages to overload the targeted network's bandwidth. Attacks on the ICMP protocol, including smurf attacks, ICMP floods, and ping floods. Huge numbers of ICMP requests are sent to the victim's IP address. The source destination IP address is spoofed. The hosts on the victim's network respond to the ICMP requests. Which creates a significant amount of traffic on the victim’s network, resulting in consumption of bandwidth and ultimately causing the victim’s server to crash. To prevent a smurf attack, individual hosts and routers can be configured to be non-responsive to external ping requests or broadcasts. Routers can also be configured to ensure that packets directed to broadcast addresses are not forwarded. 
