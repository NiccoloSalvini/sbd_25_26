# ❓ Frequently Asked Questions

So there are a number of frequent troubles that students get most frequently stucked on. Here a collection of them with relative answer. What I generally suggest is to look for online answer just coping and pasting the error message from console to Google. **The most respected resource to look for when you are in trouble is [Stackovverflow](https://stackoverflow.com/)**.


## Q n'A 

- I can't really install <package> via `install.packages("<package>")`,  it gives me some weird stuff I cant undestrand.

> have you check the syntax? Did you spell correctly the package name, capital letters matters you know it?
> still have the problem? try to install it from source, in most cases packages source code lies in GitHub. Look for the package author and name then do that: `library(devtools)` (if you still have not already installed the package `devtools` run `install.packages("devtools)` then execute `library(devtools)`). At this point run `install_github("<github package author username>/<package name>")`. I did not mentioned it before because I give it fro granted: PLEASE BE SURE TO HAVE INTERNET CONNECTION ACCESS otherwise you are not going to dowload anything.

- So I have a file in local inside my R project and when I execute `read.csv("<path to file>")` that says R cant find the files, so what's up?

> most likely the problem is in the Working Directory ( check what Working Directory means \@ref(workdir)). Load `here` with  `library(here)` (if you still have not already installed the package `here`, then execute before `install.packages("here")` then `library(devtools)`). At this point run `here()` and verify the file lies in the very same directory in the output.

- Are lectures recorded?
> Generally Yes, the lectures will be recorded and made available to enrolled students. It might happen sometimes that teacher forget to start registration, if you notice please raise your hand and say it!

- Will the videos be made available publicly?
> This we can't do, we are sorry for that but it is internal policy

- Is attendance mandatory?
> We won't be taking attendance but we expect to see you often in class. We love talking to students to understand how you are doing, make sure you get the most out of the class, and get your feedback to improve the materials. The class is relatively small so we will probably get to know each other well.
If you have a time conflict and can't attend the online lectures, please send us an email to let us know!

- What is the format of the class?
> It will be lectures, laboratories, and discussion. Occasionally depending on how fast we do lectures we might have some industry experts giving us tutorials or themed speeches.

- Do I need to know R  for the course?
> Since R is the gold standard for statistics people, we expect most tutorials will be in R even though fluency isn't required, but will make your life so much easier during the course.

- Are there any (group) assignments?
> We are still discussing about that, evemntually we will make it clear in one month max

- I have a question about the class. What is the best way to reach the course staff?
> please email  [your teaching assistant](mailto:niccolo.salvini27@gmail.com), Dr. Niccolo Salvini if it is related to R and laboratories, if that is not the case drop an email to [Prof. Giuseppe Arbia](mailto:giuseppe.arbia@unicatt.it)

- I can't install package `OneTwoSamples`, why?
> This is something that has to do with incopatible R version between built time and your current R version. If that cunfuses you don't bother you are not going to use it. Instead you are going to use base R hyp testing with `stats::t.test()` or make use of `infer`, tidy statistical inferece.


