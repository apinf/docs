# Dashboard Prototype Test 1
* Participant: Asim
* Fascilitator: Nazia
* Observer: Ilya
* Date: 12.06.2017 

# Observations:

(wireframe1)
**Question 1:what do you think about the design?**

- Participant assumes he can manually configure overview information that would be appearing for each APIs. 
(e.g. selecting No. of calls, Avg. response time, unique users, etc. for 1 API; selecting only the 1st 2 briefs for another, etc.)

**Question 2: Where you can configure which cards to appear in dashboard**

- Participant is looking for a configuration button somewhere in the API name dropdown.
- Participant wishes to look for threshold values to compare against a specific metric (especially for avg. response time).
- Participant expects if any of the metric values exceeds some predefined threshold, there should be visual cue to indicate it.
(alternatives: alert, email, audible alert, etc.). If everything is monochromic color, he might lost the things that needs his attention. 
Visual alert is more effective.
- The Participant needs a dashboard not only to see brief information but also to get alerts and be alerted.

**Question 3: what about the information about percentage increase/decrease in value of the metrics defined?**
- That would depend on the threshold set. If the Participant clicks a specific metric card, then he expects to see a dialogue showing him that metric in a time graph.
- the indications are good. it can be use case for other API owners, but not for him. 
the indications should be color coded to notify whch is a positive change and which is not. 
That should differe based on the type of metric user is viewing.

**Question 3: what is your preference period of time to see the data in the dashboard?**
- For the participant, it is more relevant to show data is updated in 5 minutes or less. (as real time or possible)
- For monitoring purpose, real time data is more important.
- agrregrated information (monthly/weekly) is more appropriate for "good to know" purposes.Its better for presentation

**Question 4: what is your idea about data refreshing?**
- Refreshing and the repopulation of data should be information not older than 2 minute.
for weekly purpose: from now until the same time in past week.

** Question 5: what do you think happens when you touch a card here?**
- on clicking a card, it gives the participant a detailed overview
(we switched into the second wireframe)
- a new dialogue, not a new page. Because page would loose all the context for the user
- a dialogue makes more sense, because participant stays in the same context and 
there is no need to repopulate all the data that needs to be done when navigating to a new page.
This reduces redundant development and system calls to fetch the data.

**Question 6: what about the detailed overview shown there?**
- about detailed charts, for weekly purpose (example), participant would be expecting to return some more data apart from the (x to x+7 days) to get some peak into the next step.
- Participant may want to be navigated to a different page, when he has drilled down some particular information (e.g. average response time, when it was on peak during to period x tp x+7) about a specific API, to get more details.

**Question 7: what about refreshing in detailed view?**
- Refresh should fetch the most recent data. If the participant was in detailed view 10 seconds earlier, he would expect to get weekly data from the current time to x+7 days.
He wants to get the data the last time it was updated.

** Question 8: what you like about the (1st wireframe)? Are the shown information enough to know about your APi statuses?**
- it depends on usecases. For example, unique user may be needed for a specific API only. For other APIs, unique users may be of no use.
- it may me useful for the participant to see number of calls and average response time based on endpoints of a specific API.
- in a generalized perspective, No. of calls and average response time are the only two metrics which is important for the participant for all the APIs he owns. increase or decrease in the amount may be interesting.

** Question 9: what improvements would you like to see there (1st wireframe)?**
- manual configuration of metrics as per every API (e.g. seeing average response time of the same API with three different endpoints,
- endpoints are very important  for the participnat. (because access to an endpoint might be done via different paths by different users)

** Question 10: what you like about the (2nd wireframe)? Are the shown information enough to know about your APi statuses?**
- yes, may be.

** Question 10: what improvements would you like to see there (2nd wireframe)?**
- Participant were not clear about how the week view works. He assumed that he can select any of the 252 weeks in the year. 
- He was uncertain if the refresh shows information from the last day to the past week or current time to same time last week.
- He suggested for a date picker where he can configure a specific week with start and end dates to see the data
- For the participant, real time data is more important than weekly data because he treats weekly data as "good-to-know" information.




