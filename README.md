# Team Food CMSC495 Capstone Project

## Introduction
*Please note this a work in progress and may not be stable at all times*
The Team Food project is a social networking site that is aimed at providing a place for food computer builders to share and discuss the plant growing recipes they have built. You can read more about what food computers are at MIT's site for their Open Agriculture initiative [here](http://openag.media.mit.edu/).

## Basic Functionality
With the goal of creating a central place where food computer builders can meet and share recipe files and discuss them our app will support the following functionality.
* Create and manage account
* Make posts for discussions
* Upload/download recipe (*.gro) files
* Graphical viewing of recipe file contents

## How to install run
To run this on a local machine you will need at least the following:
* Ruby, at least version 2.2.1
* Rails, at least version 4.1.6
* Ubuntu, server edition, version 14.04.4

Once these prerequisites are installed you can clone into your local test enviroment using:

```git clone https://github.com/smurphy333/UMUC-Open-Agriculture-Database.git```

Once that is finished make sure you move into the newly created app folder and do the following

```bundle install```

This will resolve the dependencies of the app and install all required gems.

```rails server -b 0.0.0.0 -p 3000```

This will run the app, listening on all interfaces, and pointed at port 3000. The app should now be viewable at http://localhost:3000

Additionally, you may need to prepare the database for running the server which you can do by running

```rake db:migrate```
