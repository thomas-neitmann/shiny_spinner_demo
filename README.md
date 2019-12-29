# Upgrade your Shiny app with spinners

Have you ever had to look at a blank screen before a plot finally appeared in your Shiny app? Or did you ever encounter that it takes a couple of seconds before your plot updates? If so, this post is for you. While I cannot offer you a solution for improving the speed and responsiveness of your app, I can show you how to display beatufiul spinners to your app's users while your server is busy.

Thanks to the `shinycustomloader` package this couldn't be any simpler. In `ui.R`, simply wrap your `*Output()` function inside `shinycustomloader::withLoader`, e.g. `shinycustomloader::withLoader(plotOutput("plot"))` or alternatively - if you are a fan of piping - `plotOutput("plot") %>% shinycustomloader::withLoader()`. 

In addition to more than 10 built-in spinners, the package offers the possibility to create custom spinners based on gifs or text. 

Check out my example shiny app to see `shinycustomloader` in action by running this command from within `R`:
```r
if (!"shiny" %in% installed.packages()) install.packages("shiny")
shiny::runGitHub("shiny_spinner_demo", "thomas-neitmann", subdir = "spinner_demo")
```
