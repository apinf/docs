# Bug triaging process

## Introduction
Bug triaging means evaluting
- probability of the error
- severity of the error

Based on these criteria, it should be determined the priority for bug fixing. Triaging whould happen weekly, mid week if possible. 
It should be a two-person activity: lead developer and product owner should go through all new bug reports opened since last triage, 
assign a priority to each issue and place the issues either in Planning, Prioritized Backlog or Icebox.
Goal for later is to have an error manager role in the team.

## Steps
1. Find the bugs requiring triage in Github
1. Check that each bug has been filed in correct repository
2. Check that each issue (bug reportI is not a duplicate of an existing bug report. 
   If it is a duplicate, mark it as one and close the issue.
3. Check that each issue contains required information so that it is possible to study and/or reproduce it: 
    * environment (e.g. OS, browser and its version)
    * steps to reproduce
    * expected result 
    * actual result. 
    * Preferably, there should also be a screenshot of the problem. 
  If there is missing information, ask the person who has filed the bug report to fill in the missing details.
4. Try to reproduce the bug.
5. Assign a priority label to the issue.
6. According to the priority, move the issue from Inbox to relevant column in Waffle.
7. Notify developers about bugs requiring immediate fix.

Note: If the problem is caused by a package not developed by the APInf team, make sure an upstream issue is created and referenced in the original report.

## Priority guidelines

**Critical** 
- Bug is in production, core functions are broken, requires immediate fixing

**Major** 
- Bug is in production, functions other than core functions are broken, affects multiple users
- Bug is develop, but preventing release

**Minor** 
- Bug is in develop, does not prevent release, likelihood of occurrence is small
- But is in production, but the impact on users is small

If the issue is an enhancement request rather than a bug report, re-label it as 'enhancement'.

# Sentry triage

The Sentry Unresolved issue list must be groomed weekly by senior developers.

## Steps
1. Investigate the unresolved issues one by one
  - Figure out what is the original error, what module or line of code is involved and try to reproduce
2. Decide whether it is an error or not. Options:
  - Ignore, if not an error
  - Assign to someone else, if you cannot figure out the reason
  - Create an issue in Github, if it is an error that needs to be resolved
3. If you create an issue in Github
  - Link to the Sentry URL 
  - Provide relevant details in the issue, including steps to reproduce, based on the investigation
  - Leave out any sensitive information
