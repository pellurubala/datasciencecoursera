---
title       : Word Cloud Application
subtitle    : President Barack Obamas State of the Union Address
author      : BP65
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## 

<q> 
A <b> <font color="red">tag cloud (word cloud, or weighted list in visual design)</font></b> is a visual representation for text data, typically used to depict keyword metadata (tags) on websites, or to visualize free form text. Tags are usually single words, and the importance of each tag is shown with font size or color.</q>

<style>
.dark q {
  color: green;
}
</style>


--- .class #id 

## A Look at my application
  
<img src=".\assets\img\web_site.jpg" alt="data visulization demo site" height="500" width="700" border="1"> <br>

--- .middle 




## Reading a csv file and generating word cloud in .Rmd file


```
## 'data.frame':	1000 obs. of  4 variables:
##  $ X       : int  1 2 3 4 5 6 7 8 9 10 ...
##  $ rating  : int  5 5 5 5 5 1 3 5 4 4 ...
##  $ location: chr  "us" "us" "nz" "gb" ...
##  $ text    : chr  " SO ADDICTING  DEFF DOWNLAOD ITS EPIC YOU CAT LOVERS WILL FALL IN LOVE <3" " Great game I love this game. Unlike other games they constantly give you money to play. They are always given you a bone. Keep"| __truncated__ " Sooo much FUN I would definitely recommend this game, it's fun for dress up and business. It's extremely entertaining, I'm hoo"| __truncated__ " AWESOME Epic game so addictive 5stars <f0><U+009F><U+0098><U+0084>" ...
```

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 
--- .middle 


##

## Always the speech is about what?
 Seven years <br>
 One President<br>

  <b> <font color="red"> jobs, work, people, economy</font></b><br>
  
  <table  style="width:50%">
  <tr>
    <td><img src=".\assets\img\jobs.jpg" alt="jobs"  height="200" width="450"> </td>
   <td><img src=".\assets\img\people.jpg" alt="people"  height="200" width="450"> </td>
    
  </tr>
  <tr>
    <td><img src=".\assets\img\economy.GIF" alt="economy"  height="200" width="450">
    <td><img src=".\assets\img\dollar.png" alt="dollar"  height="200" width="450">
  </tr>
</table>

