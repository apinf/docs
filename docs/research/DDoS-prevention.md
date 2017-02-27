This document outlines our research on DDoS prevention strategies.

DDOS Attak
DDOS attack is type of attack, which causes performance issue to a server, or even sometimes it causes a server to stop functioning. The victims of DDOS attacks are usually servers that provies inbound and outbound traffics. Also, interfaces that are invovled in exchagenging information throughout the Internet, can be the target of the attacks.

Ahead to mitigating the DDOS attacks, the hardware/software systems must be optimized precisely. At software level, consider the following cases for the sake of optimization:

The C10k problem is the problem of optimising network sockets to handle a large number of clients at the same time.

OWASP Top Ten Cheat Sheet https://www.owasp.org/index.php/OWASP_Top_Ten_Cheat_Sheet

OWASP Mobile security awareness https://www.owasp.org/index.php/Mobile_Top_10_2016-Top_10

At hardware level, consider the following cases for the sake of optimization:

Use loadbalancers to distribute the load of requests.
Consider using Round-robin DNS, which returns multiple IP addresses and the user will connect to one of those IP addresses. 

Actively check/monitor servers to allow/disallow bots, crawlers. Sometimes, companies that are collecting statistical data about a website/webservice, are sending too many requests that causes performance issues.

To undrestand DDos attacks, it is wise to abstract down the attacks to the layers of OSI (Open Systems Interconnection model ) model.

![Alt text](https://www.google.fi/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi29ufJ8q_SAhWBXSwKHWHUAwEQjRwIBw&url=https%3A%2F%2Fwww.pinterest.com%2Fexplore%2Fosi-model%2F&psig=AFQjCNGsQ_3sbaL3EQkbR_VvLFIKHZrM2A&ust=1488271780527713 "OSI MODEL")
