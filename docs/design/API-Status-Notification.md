# API Status notification to user

GitHub story: [apinf/api umbrella dashboard#332](https://github.com/apinf/api-umbrella-dashboard/issues/332)

Ultimate goal is to show something like: [](https://dev.twitter.com/overview/status)https://dev.twitter.com/overview/status (see screenshot below)

![](https://hackpad-attachments.s3.amazonaws.com/apinf.hackpad.com_esXppZr8Dbe_p.426907_1439811489922_undefined)

**Current solution proposal:**

Determine how we can inform users about API status (As an end user):

*   Good to know if the API server is up and running
*   What is the ping timeout for the server
*   Is the API accessible (at least, returning me 403)

![](https://hackpad-attachments.s3.amazonaws.com/apinf.hackpad.com_esXppZr8Dbe_p.426907_1439813149793_undefined)

My current  proposal is that we show something like the above screenshot where we take care of only two information; 

1.  Is the service available
2.  What is the response time / performance of the service

Definition of "alive" and "down":

*   alive

        *   Is UP (check: isup.me or isitup.org); simple JavaScript implementation (e.g. using jQuery OR XMLHttpRequest)
    *   Uptime: last 24hrs (future implementation)
    *   [](http://jsfiddle.net/GSSCD/203/)http://jsfiddle.net/GSSCD/203/ (to check ping status)

*   down

        *   Does not respond to ping 
    *   Web domain does not respond

[taija](/sW0PAYFPft8#taija), [brylie](/UgIMF4piVgs#brylie): please check the above proposal. More study is still required and I will post updates.