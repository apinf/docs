# DDoS attack

DDoS attack is type of attack, which causes performance issue to a server, or sometimes it even causes a server to stop functioning. The victims of DDoS attacks are usually servers that provide inbound and outbound traffic. Also, interfaces that are involved in exchanging information throughout the Internet, can be the target of the attacks. 

A DDoS attack would effectively disable access to the API. As mobile app penetration and usage grows, and bank customers use apps as their main channel to perform banking transactions, the impact an API attack can have on an economy grows exponentially. Customers are unable to pay bills, transfer money, or ensure they have funds to make purchases. 

”My website has been experiencing a denial of service/hack attack for the last week. The attack is hitting our web API with randomly generated invalid API keys in a loop.
I'm not sure if they are trying to guess a key (mathematically impossible as 64bit keys) or trying to DOS attack the server. The attack is distributed, so I cannot ban all of the IP address, as it occurs from hundreds of clients.” case from stackoverflow.com

# How to cope with brute force attack?

A brute force attack simply uses cryptography algorithm. Using the algorithm the attackers made a program that automatically break into autentication systems. When we attempt to login and our page request is sent from the server to the client machine hackers are more active to access the account.
The standard way to do this is by implementing a lockout or a progressive delay. A lockout prevents an IP from making a login request for X minutes if they fail to log in N times. A progressive delay adds a longer and longer delay to processing each bad login request. 
Copin through some server-side preventions:
Setting up an IDS system, like Snort, to detect when a DDOS attack is occurring and take the first steps to mitigate it
Installing and configuring a web-application firewall, like mod_security, to reject incoming connections that violate rules that you define.
Fail2Ban is able to reduce the rate of incorrect authentications attempts however it cannot eliminate the risk that weak authentication presents. 
Increase the API key length to 128 (or 256, or 512) won't cost much, and you'll tremendously increase the search space 
In case the application is deployed on cloud i.e, Amazon Web Services, it is possible to safegaurd the application with some services:
- Use CloudFlare.
- Consider using AWS API gateway as the second stage for your API requests. AWS API gateway provides filtering, throttling, security,auto-scaling and HA for your API. 
- And then forward the valid requests to your machines (in or outside amazon)

DDoS attack can be launched from numerous compromised devices, often distributed globally in what is referred to as a botnet. Motives for these attacks appear equally diverse such as personal reasons, the prestige, criminal, commercial, or ideological in nature.
 People behind the DDoS attacks are:
 
Extortionists: They menace to inactivate the web service and then ask for the ransom money to put a stop to an attack. 

Exfiltrators: They use a DoS attack to distract interest from their actual aim – stealing data for money in a form of intellectual property or credit card numbers. 

Hacktivists: They are different than rest of the opponents. They are irritated and look for making a political announcement or stand out a focus on a cause. 

Competitors: Your competitors may cause your site inactive to gain an advantage; or they might screen scratch information on your site, for example, to determine and beat your pricing.

# Optimizing systems

Ahead to mitigating the DDoS attacks, the hardware/software systems must be optimized precisely. At software level, consider the following cases for the sake of optimization:

The C10k problem is the problem of optimising network sockets to handle a large number of clients at the same time.

OWASP Top Ten Cheat: 

![Image from blogspot.com](http://1.bp.blogspot.com/-FzFzOfzb92I/USi8VWXPn9I/AAAAAAAABl8/K9rcqKxpkZE/s1600/OWASP+Top+10+-+2013+-+RC1_Page_07.jpg?raw=true "OWASP Risks")

OWASP Mobile security awareness 

![Image from blogspot.com](http://3.bp.blogspot.com/-9ijvyGcEjBQ/UM7usnFiTzI/AAAAAAAADpM/0oz23vmAl5k/s1600/OWASP-Top_10_risks.png?raw=true "OWASP Mobile")

At hardware level, consider the following cases for the sake of optimization:

Use loadbalancers to distribute the load of requests. Consider using Round-robin DNS, which returns multiple IP addresses and the user will connect to one of those IP addresses.
Actively check/monitor servers to allow/disallow bots and crawlers. Sometimes, companies that are collecting statistical data about a website/webservice, are sending too many requests that causes performance issues.

# Attacks in different OSI layers

To understand DDoS attacks, it is wise to abstract down the attacks to the layers of OSI (Open Systems Interconnection) model. Because the OSI reference model details each phase of the process involved to connect a computer to the network and communication of data, most of the researchers, developers and manufacturers use the OSI model as a common platform to improve network communications.
![Image from s-media.com](https://s-media-cache-ak0.pinimg.com/originals/55/53/bd/5553bdf0a193142af2976db02c4bb920.gif?raw=true "OSI MODEL")

# Layer 7 DDoS attack

A Layer 7 DDoS attack is often perpetrated through the use of HTTP GET. The attacker looks like a legitimate connection, and is therefore passed on to the web or application server. The attacker begins requesting large numbers of files/objects using HTTP GET, so the server quickly becomes focused on responding to those requests and has a hard time responding to new, legitimate requests.

An HTTP flood attack is a type of Layer 7 application attack that utilizes the standard valid GET/POST requests used to fetch information, as in typical URL data retrievals (images, information, etc.) during SSL sessions. 
An HTTP GET/POST flood is a volumetric attack that does not use malformed packets, spoofing or reflection techniques. When rate-limiting was used to stop this type of attack, the bad guys moved to using a distributed system of bots (zombies) to ensure that the requests (attack) was coming from myriad IP addresses and was therefore not only more difficult to detect, but more difficult to stop. 
The attacker uses malware and trojans to deposit a bot on servers and clients, and then remotely includes them in his attack by instructing the bots to request a list of objects from a specific site or server. The attacker might not use bots, but instead might gather enough evil friends to launch an attack against a site that has annoyed them for some reason. 

Layer 7 DDoS attacks are more difficult to detect because the TCP connection is valid and so are the requests. Application monitoring is the practice of monitoring software applications using a dedicated set of algorithms, technologies, and approaches to detect zero day and application layer (Layer 7 attacks). Once identified these attacks can be stopped and traced back to a specific source more easily than other types of DDoS attacks. 
Layer 7 firewall (application firewall) gets smarter about stopping layer 7 DDoS attacks without affecting legitimate clients. It is a subtle dance and requires a bit more understanding of the application and its flow, but if implemented correctly it can improve the ability of such devices to detect and prevent layer 7 DDoS attacks from reaching web and application servers and taking a site down.
DDoS attack involves sending malformed SSL requests to target SSL servers and attempt to exhaust the servers’ resources, and thus deny service from legitimate users. 

# DDoS attack on presentation layer

Pushdo botnet is an example tool which sends garbage data toward the target SSL server. To mitigate, consider options like offloading the SSL from the origin infrastructure and inspecting the application traffic for signs of attacks traffic or violations of policy at an applications delivery platform (ADP). A good ADP will also ensure that your traffic is then reencrypted and forwarded back to the origin infrastructure with unencrypted content only ever residing in protected memory on a secure bastion host.

Telnet communication sniffing is an example of DDoS attack that targets the session layer. The most critical issue in Telnet protocol is the lack of encryption. Every transmission between communicating parties over the network is sent in plain text. Of course, it is a vulnerability in the protocol and being exploited by the attackers for frame sniffing. The attacker can easily sniff the plain information flowing over the network.

SYN Flood is an example of attacks that target transport layer. SYN Flood works by establishing half-open connections to a node. When the target receives a SYN packet to an open port, the target will respond with a SYN-ACK and try to establish a connection. However, during a SYN flood, the three-way handshake never completes because the client never responds to the server's SYN-ACK. As a result, these "connections" remain in the half-open state until they time out. This causes reaching bandwidth or connection limits of hosts or networking equipment. 

# SYN Flood Mitigation

DDoS attack blocking, commonly referred to as blackholing, is a method typically used by ISPs to stop a DDoS attack on one of its customers. This approach to block DDoS attacks makes the site in question completely inaccessible to all traffic, both malicious attack traffic and legitimate user traffic. Blackholing is typically deployed by the ISP to protect other customers on its network from the adverse effects of DDoS attacks such as slow network performance and disrupted service.

# Layer 3 DDoS Attack

Layer 3 infrastructure DDoS attack method uses ICMP messages to overload the targeted network's bandwidth. Attacks on the ICMP protocol, including smurf attacks, ICMP floods, and ping floods. Huge numbers of ICMP requests are sent to the victim's IP address. The source destination IP address is spoofed. The hosts on the victim's network respond to the ICMP requests, which creates a significant amount of traffic on the victim’s network, resulting in consumption of bandwidth and ultimately causing the victim’s server to crash. 

# Smurf attack mitigation

To prevent a smurf attack, individual hosts and routers can be configured to be non-responsive to external ping requests or broadcasts. Routers can also be configured to ensure that packets directed to broadcast addresses are not forwarded.

# Layer 2 DDoS Attack

The most critical attacks at the data link layer involve Content Address Table (CAM) exhaustion, ARP spoofing, DHCP starvation attacks, MAC address spoofing, VLAN attacks and many more. 
These attacks generally disrupt the normal traffic flow from sender to receiver. The aim of the MAC Flooding is to takedown this MAC Table. In a typical MAC Flooding attack, the attacker sends Ethernet Frames in a huge number. When sending many Ethernet Frames to the switch, these frames will have various sender addresses. The intention of the attacker is consuming the memory of the switch that is used to store the MAC address table. The MAC addresses of legitimate users will be pushed out of the MAC Table. Now the switch cannot deliver the incoming data to the destination system. So considerable number of incoming frames will be flooded at all ports. MAC Address Table is full and it is unable to save new MAC addresses. It will lead the switch to enter into a fail-open mode and the switch will now behave same way as a network hub. It will forward the incoming data to all ports like a broadcasting. 

Let’s see what are the benefits of the attacker with the MAC Flooding attack. As the attacker is a part of the network, the attacker will also get the data packets intended for the victim machine. So that the attacker will be able to steal sensitive data from the communication of the victim and other computers. Usually a packet analyzer is used to capture these sensitive data. 
After launching a MAC Flood attack successfully, the attacker can also follow up with an ARP spoofing attack. This will help the attacker retaining access to the privileged data even after the attacked switches recover from the MAC Flooding attack. 
The ARP Spoofing is an attack where the attacker sends falsified ARP Messages (Address Resolution Protocol) so that the attackers MAC address will be linked with the IP address of a legitimated user in the network. 
The Address Resolution Protocol is a protocol used by the Internet Protocol usually by the IPv4 to map the IP address of a machine to a physical address like MAC address, also called Ethernet address. 

# Layer 2 attack mitigation

We can prevent the MAC Flooding attack with various methods.
Port Security, switches are configured to limit the number of MAC addresses that can be learned on ports connected to the end stations. Also a small table of ‘secure’ MAC addresses is maintained with the traditional MAC address table. This table also acts as a subset of the MAC address table. Cisco switches are available with in-built port security system.

Authentication with AAA server, is a server program that handles user requests for access to computer resources and, for an enterprise, provides authentication, authorization, and accounting (AAA) services.

Security measures to prevent ARP Spoofing or IP Spoofing

Implement IEEE 802.1X suites, will allow packet filtering rules to be installed explicitly by an AAA server based on dynamically learned information about clients, including the MAC address.

Attacks on physical layer include physical destruction, obstruction, manipulation and malfunctioning of physical media, which leads to its unavailability to the intended users. It requires the repair to make the physical media resources available.

# References

https://en.wikipedia.org/wiki/C10k_problem

https://en.wikipedia.org/wiki/Ping_of_death

http://www.cisco.com/c/en/us/about/security-center/guide-ddos-defense.html

https://blog.thousandeyes.com/three-types-ddos-attacks/

http://ddosattackprotection.org/blog/layer-7-ddos-attack/

https://www.us-cert.gov/sites/default/files/publications/DDoS%20Quick%20Guide.pdf

https://devcentral.f5.com/articles/layer-4-vs-layer-7-dos-attack

https://documentation.meraki.com/MR/Firewall_and_Traffic_Shaping/Layer_3_and_7_Firewall_Processing_Order

https://security.radware.com/ddos-knowledge-center/ddospedia/ssl-garbage-flood/

http://www.tandfonline.com/doi/full/10.1080/21642583.2016.1241193

http://www.tandfonline.com/doi/full/10.1080/21642583.2016.1241193?cookieSet=1

https://www.interserver.net/tips/kb/mac-flooding-prevent/

http://www.inetdaemon.com/tutorials/basic_concepts/network_models/osi_model/real_world_example.shtml

https://www.owasp.org/index.php/OWASP_Top_Ten_Cheat_Sheet

http://stackoverflow.com/questions/32575924/how-to-stop-hack-dos-attack-on-web-api


http://1.bp.blogspot.com/-FzFzOfzb92I/USi8VWXPn9I/AAAAAAAABl8/K9rcqKxpkZE/s1600/OWASP+Top+10+-+2013+-+RC1_Page_07.jpg

http://3.bp.blogspot.com/-9ijvyGcEjBQ/UM7usnFiTzI/AAAAAAAADpM/0oz23vmAl5k/s1600/OWASP-Top_10_risks.png

https://s-media-cache-ak0.pinimg.com/originals/55/53/bd/5553bdf0a193142af2976db02c4bb920.gif



