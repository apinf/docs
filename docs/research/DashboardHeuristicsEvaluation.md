### Dashboard Heuristic Evaluation od APINF

* Forsell, C., & Johansson, J. (2010, May). An heuristic set for evaluation in information visualization. In Proceedings of the International Conference on Advanced Visual Interfaces (pp. 199-206). ACM.

* Format: [number] Problem Description
*         [violated Heuristic] [Severity]
*         [Solution]

    1. Dashboard page does not have any Page Title. When user navigates to dashboard from landing page, lack of title can confuse  him/her about the location in the web service.
    * [5, 7][3]
    * Add Page title "Dashboard" on the top of the page
    
    2. When navigated to dashboard, left side menu name appears as "Analytics" although user just came to the dashboard page.
    * [5, 7][3]
    * Change the left side menu option name as Dashboard and add "Analytics" as a submenu under Dashboard. When user comes to the page   and expands left side menu, s/he should see both Dashboard and Analytics as focused/hilighted. This would also leave option for   adding new submenus under Dashboard.
    
    3. There is no help text to explain what are the two charts used for in the Analytics page. User might become confused and frustrated if s/he doesn't know how the charts work.
    * [8][2]
    * Add info icon beside chart name and give explanation on the opened dialogues about how the charts work.
    
    4. Bottom chart in the analytics page is named only as "Chart". This is not intuitive and user can't understand the purpose of the chart from just a glance at the name or the chart itself.
    * [7][3]
    * Add intuitive chart name.
    
    5. On first time logging in to the site, if API ownder doesn't add any API and browses to Dashboard page, the graphs in the analytis appear empty. This might make user confused.
    * [8][3]
    * Below the page title or below each individual chart, there should be instructions given to users on how to populate data in both * charts. e.g. "You have added no API of your own. Please use API Backend to add your API to populate the charts with data."        Additional conditions about data appearance can be given via info tip.
    
    6. On clicking API Backend at Side menu, user still remains in the Analytics page (or if clicked from Catalog page). But on clicking other two options user is navigated to the desired page location. This is for the reason of Add API Backend submenu under API Backend.
    * [6][3], [2][2]
    * Design the side menu s.t. if there are submenus under any menu option, then on clicking th option, user should be navigated to    the 1st sidemenu page. This also reduces the number of click a user has to make to access sidemenu pages.
    
    7. When User doesn't have data populated on charts, selecting anything from filter pane (dropmenus, text box) give a browser alertbox with text. The text to some inconsistency in the table and is not written in a user friendly manner. The meaning might be confusing to the user.
    * [4][3]
    * Fix alert text so that it is more intuitive. If possible, try no to show the text in browser alert window.
    
    8. No information or help text is given about how to use the filtering pane in Analytics page.
    * [4][3]
    * In Info tip provide instruction texts about what the filter does and how it should be used. added condtitions (if nay) there for   using the filter.
    
    9. Both charts in Analytics have additional portion of their X and Y axises visible when they intersect. Also X axises of both charts break the pane and extends outside.
    * [1][3]
    * Redraw the axises so that excess portion doesn't appear after intersection between two. Also resize the X axis so that it         doesn't break the pane.
    
    10. The table for monitoring API calls from different countries doesn't have information about how to use it. Also the title is not intuitive.
    * [4][2], [7][3]
    * Change the table name into somehting that conveys its purpose. Add info tool tip to provide how the table works and how it is (if so) associated with the world Map below.
    
    11. When no data is available in table, pagination buttons Previous and Next remains below the table, although there is no additional pages to browse.
    * [6][2]
    * When there is no pages to browse the previous and next buttons should not appear.
    
    12. When the charts are loading for populating data, the "Loading..." appears as a text on a table. It is not visible enough.
    * [4][2]
    * Add an hourglass with animation to indicate the loading state. This should be all over the website for consistency purpose
    
    13. Change the icons for sorting all over the website, they are not intuitive enough.
    * [1][1]
    * Simply use a up and down arrow. Down means ascending and Up means descending. It would make it easier to show only these 2        arrows in active/inactive state. clicking on 1 arrow would make it active and another one inactive.
    
    14. When there is no Filtered data, the information on the chart axis doesn't give more context.
        e.g. Date appear as  Thu04 but does not indicate any month or year. (X axis)
        Also on Y axis, only number appear. They don't indicate when what are the values for and what is the unit of measurement.
    * [1][3]
    * Add axis and chart measurement information on each chart.
    
    15. Filtering option is not working at all!!
    * Severity: 4
    
    16. When curser of hover over data on the chart it changes into hand icon, meaning there can be some action. But on clicking the data, nothing happens.
    * [1][2]
    * If charts are supposed to be interactive, then fix the functionality because now nothing happens. If they are not interactive,    then cursor should not change into hand icon on pointing over chart data.
    
    18. Add option on map to zoom in/out using controls aside from mouse. Also navigational control to go north-south-east-west.
    * [3][1]
    
    19. Improve loading time of Map on zooming in/out. When Map is zoomed in in the depth of seeing street details of a city, the zoomed view takes a lot time to load.
    * [3][3]
    
    20. When Analytic page is browsed from up to down using mouse scroller, when cursor comes over map view, instead of page scrolling, map starts to zoom in/out.
    * [3][2]
    * When mouse hovers map, the mouse scrolling should not zoom in/zoom out the map. It should be possible only when map is selected   by specific click.
    
    21. Redesigning the table 
    * [1][3]
    
        
