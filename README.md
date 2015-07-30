Putting the R in Sports
=======================
This is the repo from my Devopsdays presentation.
-------------------------------------------------

Here is a link to the the video presentation: 
**["Putting the R in Sports - Devopsdays Minneapolis"](https://www.youtube.com/watch?v=qAMu5dRDmGA&feature=youtu.be)**

Here is a link to the Slide Deck version of the presentation
**["Putting the R in Sports"](http://www.slideshare.net/botchagalupe/putting-the-r-in-sports)**

Here is a link to the pre-built Docker Hub Lahman/R image
**["Docker Hub image - gliderbor380/lahman"](https://registry.hub.docker.com/u/gliderboy380/lahman/)**

You need to have R installed on your computer. 

If you have Docker installed you can run the [gliderboy380/lahman image](https://registry.hub.docker.com/u/gliderboy380/lahman/) as follows:

```
docker run -d -p 8787:8787 gliderboy380/lahman
```

The basic commands used in the presentation are in **CheatSheet.MD**

**Batting.csv** and **Salaries.csv** are from the [Lahman’s Baseball Database](http://www.seanlahman.com/baseball-archive/statistics/())

The **Dockerfile** file will build a Docker image with R and the complete Lahman database installed. 
