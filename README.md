# {Pro}Coders Unit 1

This Unit will take roughly 240 hours to complete.

During Unit 1 you will be laying a foundation through the use of the books you received, the odin project and then building on this through more advanced approaches outlined in these pages.  You will also be picking up industry practices, such as: scrum, agile, git flow, pull requests, stand ups and retrospectives.

## Approach to Learning
The course is designed to be less hands-on than traditional classroom based courses.  It will involve research, trial and error, problem solving and debugging.  Each part will lay out what is required from you and provide an order of how things should be completed.  It will not tell you what code you should write, but will provide links to resources which should help you to find the code you need to implement.

Each step should introduce you to new concepts and give you enough of a foundation to be able to complete the more advanced exercises. However, this project contains a branch for most steps of the development process.  So if you find yourself getting really stuck, you can refer to that particular branch for support.  Please bear in mind, that this should only be used as a last resort.

For the duration of the course you will now be following the process as outlined below:

## Using Git Flow
If you aren’t already doing so, from now on you will be following [git flow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) in respect to the git branches your projects has, and how you introduce new features into your codebase.

In a nutshell, you will have the following branches:
- `master` - This is where your production code lives
- `develop` - This should also be stable, but contain the most up to date code which may not be in production yet
- `feature/[github issue number]` - New code will be developed here and will cover features defined in your user story
- `hotfix/[github issue number]` - If you need to fix a bug that is currently in production
- `release/[version number]` - For pushing new code into production

## Creating Pull Requests
**You should never work on or push to the master branch directly**.  Any new code should be branched off of develop (see above), and before you merge your work back into `develop` you must first create a [pull request](https://yangsu.github.io/pull-request-tutorial/) and submit it for review. 

To submit a PR for review, please paste a link of the PR into the slack channel `#pr-review` at which point your peers and coaches can leave you feedback.

Once you have received enough feedback and had your PR reviewed you can merge it into your develop branch.

## Writing User Stories and Defining Database Schemas
Before starting any coding you should write [user stories](https://www.mountaingoatsoftware.com/agile/user-stories) for each aspect of the feature you would like to implement.  This will make it easier to break your feature down into bite-size pieces of code that you can implement independently of any other feature. It also helps in the testing process, as your user story literally defines what you will be expecting as a result within your tests.

**You will start to write User Stories from Step 2 of Unit 1, Part 1.**

## Using a Scrum Board
In order to manage your work, you can set up a [scrum board](https://manifesto.co.uk/agile-concepts-scrum-task-board/) within the [projects tab](https://help.github.com/articles/creating-a-project-board/) of your github repository.  In this way, you can track the progress of your work and see what tasks you have remaining. 

Once you have created a project, add the following columns: Backlog, In Progress, Awaiting Review, Done

## Pair Programming
Due to the nature of the course being flexible, in terms of starting dates and people's availability, we have set up a pair-programming calendar for people to share their availablity and facilitate times for pair-programming.  We also have a recording of an example pair programming session to help guide you on how to pair program efficiently. This is available on vimeo: https://vimeo.com/album/5160912 the password is: `procoder-learners`

## Newsletters
Here are some really useful curated newsletters to help steer you towards interesting and relevant articles and tutorials:
- https://webopsweekly.com/
- https://rubyweekly.com/
- https://react.statuscode.com/
- https://nodeweekly.com/
- https://frontendfoc.us/

## Content and Activities
- [Unit 1](https://github.com/affinity-digital-ltd/unit1/wiki)

