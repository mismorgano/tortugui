
# Tortugui

My own template for my assignments for the Universidad de Guanajuato.


## Basic Usage [^local]
is this a footnote?[^1]
First we need to import the functions we want to use, in my case when I'm writing my assignments I usually do this
```typst
#import "@local/tortugui:0.1.0": template, exercise, proof
```
Then we simply used them in my document like this
```typst
#show: template.with(title: [Simple template]) // for setting up the template 

#exercise[Super difficult exercise][
    Suppose this exercise is very difficult ...
]

#proof[
  Actually is very simple, ...
]
```
Just remember both code blocks need to be in the same document.

[^local]: At the moment I'm just using my own template locally.