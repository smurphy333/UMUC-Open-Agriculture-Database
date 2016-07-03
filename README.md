** Phase 3 Update **
# Team Food Capstone Project
## Open Agriculture Recipe Sharing App

The live version is still in development, it may not be stable at all times, but if it is up you can access it at: http://162.243.4.201

Via the splash page users can create an account, read the about page, login to an existing account
or view an example .gro file in graph format.

### Introduction

Please note this a work in progress and may not be stable at all times

The Team Food project is a social networking site that is aimed at providing a place for food computer builders to share and discuss the plant growing recipes they have built. You can read more about what food computers are at MIT's site for their Open Agriculture initiative here.

### What it is:
Open Agriculture is an Open Source Project started by the
MIT Media Lab OpenAg. The Open Agriculture Data base is a
project intended to enhance that vision, by allowing open
sharing of plant recipies between the community Team Food.

### Basic Functionality

With the goal of creating a central place where food computer builders can meet and share recipe files and discuss them our app will support the following functionality.

* Create and manage account
* Upload/download recipe files
* Graphical viewing of recipe file contents
* Text based viewing of recipe file (spreadsheet)

### Prequisites for development/running

* Ruby, at least version 2.2.1
* Rails, at least version 4.1.6
* Ubuntu, server edition, version 14.04.4

##### Once these prerequisites are installed you can clone into your local test environment using:

1. Set up a server or VM with Ubuntu 14.0.4, with ruby on rails and Git Hub

	--Step by step guide found here https://gorails.com/setup/ubuntu/14.04

2. From root directory type: ```cd ~rails/```

3. Use Git to clone repository:
```git clone https://github.com/smurphy333/UMUC-Open-Agriculture-Database.git```

4. Create a feature branch: ```git checkout -b branchYOURNAME```

5. To run server change directories: ```cd UMUC-Open-Agriculture-Database/bin```

6. Install ruby dependancies: ```bundle install```

7. Run rails server type: ```rails s```

	--WEBrick info will display showing where your server is hosted(Generally http://localhost:3000)

8. To make updates: simply change the code or documentation

9. To send updates to Git Hub: git status

	--Note any new files will need to be added to the commit list using ~git add <filename>~

10. Commit: ```git commit -a -m "branchYOURNAME"```

11. set up remote: ```git remote```

12. Push to Git Hub: ```git push origin branchYOURNAME```
     enter your github uname/password

13. Check the repository for fork data
**********************************************************************************
Next Update: Final Version
