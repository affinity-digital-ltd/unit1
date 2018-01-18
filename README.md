# {Pro}Coders Intensive Course

### Congratulations on reaching the intensive course!

During the intensive course, you will be building on the foundation you laid over the past four weeks.  You will also be picking up industry practices, such as: scrum, agile, git flow, pull requests, stand ups and retrospectives.

## Approach to Learning
The intensive course is designed to be less hands on than the self-study course.  It will involve more research, trial and error, problem solving and debugging.  Each week will lay out what is required from you and provide an order of how things should be completed.  It will not tell you what code you should write, but will provide links to resources which should help you to find the code you need to implement.

You should have built enough of a foundation during the self-study course to be familiar enough with Ruby/Rails, HTML and CSS.

However, this project contains a branch for most steps of the development process.  So if you find yourself getting really stuck, you can refer to that particular branch for support.  Please bear in mind, that this should only be used as a last resort.

For the duration of the course you will now be following the process as outlined below:

## Writing User Stories and Defining Database Schemas
Before starting any coding you should write [user stories](https://www.mountaingoatsoftware.com/agile/user-stories) for each aspect of the feature you would like to implement.  This will make it easier to break your code down into bite size pieces of code that you can implement independently of any other feature. It also helps in the testing process, as your user story literally defines what you will be expecting as a result within your tests.

## Using Git Flow
If you aren’t already doing so, from now on you will be following [git flow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) in respect to the git branches your projects has, and how you introduce new features into your codebase.

In a nutshell, you will have the following branches:
- `master` - This is where your production code lives
- `develop` - This should also be stable, but contain the most up to date code which may not be in production yet
- `feature/[github issue number]` - New code will be developed here and will cover features defined in your user story
- `hotfix/[github issue number]` - If you need to fix a bug that is currently in production
- `release/[version number]` - For pushing new code into production

## Creating Pull Requests
You should never work on or push to the master branch directly.  Any new code should be branched off of develop (see above), and before you merge your work back into `develop` you must first create a pull request and submit it for review. 

To submit a PR for review, please paste a link of the PR into the slack channel `#pr-review` at which point your peers and coaches can leave you feedback.

Once you have received enough feedback and had your PR reviewed you can merge it into your develop branch.

## Using a Scrum Board
In order to manage your work, you can set up a [scrum board](https://manifesto.co.uk/agile-concepts-scrum-task-board/) within the [projects tab](https://help.github.com/articles/creating-a-project-board/) of your github repository.  In this way, you can track the progress of your work and see what tasks you have remaining. 

Once you have created a project, add the following columns: Backlog, In Progress, Awaiting Review, Done

## Content and Activities
- [Unit 1](https://github.com/affinity-digital-ltd/unit1/wiki)

