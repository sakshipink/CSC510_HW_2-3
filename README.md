# Software Engineering Homework 2 & 3
[![DOI](https://zenodo.org/badge/289961504.svg)](https://zenodo.org/badge/latestdoi/289961504)

## Methods
The experiment was carried out by signing up 10 colleagues. We sent out a pre-experiment survey, to get prior knowledge of each candidate’s expertise. Then we connected with them on a zoom meeting. At the start of the meeting, we provided them with the github repository link as well as the repl links to run the code online. We had added 4 bugs in the program: 2 logical and 2 syntactical. Once the candidates started debugging, we observed them and took observations regarding time of compilation, no. of bugs found, and if any additional help was needed. We compiled these observations to draw some useful conclusions. We had decided to assign languages to candidates based on the least level of expertise known through the pre-survey, but if there was enough time, we let them debug additional languages as well. Finally, once the debugging task was done, we asked them to fill out a post-experiment survey to receive necessary feedback. Lastly, we handed them their secret tokens assuring all their data would be anonymous.



## Materials

GitHub Repository - https://tinyurl.com/yyxjrbyl 
Pre-experiment sheet - https://tinyurl.com/y2ztnhvo 
Post experiment sheet - https://tinyurl.com/y2ztnhvo 
Real time observations [sheet] - https://tinyurl.com/y3ebnp6u

Repl Links: 
Ruby : https://repl.it/join/caeojryi-dhanrajraghunat 
Go : https://repl.it/join/wapasawa-dhanrajraghunat 
TCL : https://repl.it/join/uwcbifds-dhanrajraghunat 


## Observations

- We noticed that on average people took around 6.42 minutes for debugging the logical and syntax errors in Go language, while it took 6.42 minutes for debugging Ruby and 8.71 minutes for Tcl. 
- From the pre experimental survey, the number of people who knew (or were more comfortable with ) the language are as follows:
Go: 	3
Ruby:	2
Tcl: 	2
- Among the candidates who took the test, around 70 percent of the people claimed to have an experience rating above 4/5 in programming.
- We observed that Logical bugs took relatively more time than syntactical bugs to debug. People also mentioned that it was easier to debug syntactical errors. 
- Based on the survey, following is the percentage of the total number of people who required help while debugging different languages:
Go: 40 %
Ruby: 30 %
TCL: 70 %
- Based on the post experimental survey, the percentage of people who are likely to use the language are follows:
	Go: 76.9 %
	Ruby: 53.9 %
	Tcl: 15.4 %


## Conclusions

- We notice that Ruby was the easiest to debug for the following reasons:
The least number of people required help for debugging Ruby.
The amount of time required to debug Ruby was among the lowest.
Even though the average time required to debug Ruby and GO was almost the same in the experiment, lesser number of people had prior experience with Ruby compared to Go.
So, people took the same amount of time as Go to debug the code even when they did not have prior experience with Ruby. This shows that Ruby is relatively easier to debug compared to Go.

- Further, we also noticed that more people preferred Go as the language that they might likely use in the future. This is attributed to the fact that Go is relatively more popular and widespread compared to Ruby and Tcl.

- Also, we can conclude that Tcl was the hardest to debug and least preferred by people to code in the future. This can be attributed to the fact that it is closer to  C programming, with a syntax that is very different and uncommon in our field of work.   


## Threat to Validity

- Insufficient Sample Size - In order to come up to a valid conclusion, a sample size of 10 is too small. Hence this plays the biggest role in shaking the validity of our conclusion or inference. For example it would be ideal to have a sample population with equal experience in all the three languages. 

- There is some amount of bias towards one language over another because of prior programming experience. A python programmer would be more comfortable debugging a  language that is more similar to it. 

- The logical bugs were different in each language and since not one person is comfortable with all three languages there is no determined way of asserting whether the difficulty level of all the three languages were the same.

- Having played the role of a debugger to other groups conducting the same activity, we also found that: It was slightly easier to think of what could have gone wrong in the 3rd language (in the random order that we were debugging) that we decoded. Because the first two languages would have given us the forethought of where or what kind of logical errors one can expect. 

- We did not pre-test the bugs to ensure that they can be debugged in the given amount of time. We had 4 bugs in each version of the game, which ended up being too much to debug in the given 30 mins (based on feedback from our debuggers).

- Problems encountered from our side that shakes the validity of our conclusion:
The three implementations of game of life were not consistent with each other in the sense that they asked for different inputs (some didn’t ask for any) from the user making it confusing for the participants when switching between two languages. It would be helpful to have some consistency for the implementation of the same problem across all different languages. 
We did not strategize on how we wanted our participants to do the debugging. Should they be given upto max of 30 min for debugging, irrespective of whether they spent the entire time debugging just a single language, or should there be a time limit of 10 min for each programming language. We kept this kind of open ended depending on what the participant preferred which led to some inconsistent results.
Problems while simultaneous testing - We created a single repl link to be shared by everyone thinking that I would automatically create multiple instances. However, this is not the case and using a single shared link reflects changes made by one participant to all the others using that repl link.

- Accounting for Human error: We manually noted the time it took for a participant to debug a given problem. It might be useful to somehow automate this process of data collection, and avoid human errors.

## Experimentation setup 

NOTE: **Below is just an idea of how we can go about - any suggestions are appreciated**
- Use repl to run the desired script. Repl supports `Python, Ruby and Golang`
- How are we testing?
  - Introduce bugs in the code
  - Get information from volunteers about their experitise in the available languages (survey)
  - Ask for volunteers who are unfamiliar with the language to debug the code
  - Provide the volunteers with Unit test codes to verify successfull debugging
  - Actively monitor the volunteers for time taken to debug each bug and classify the ease of debugging syntactical and logical errors in different languages
- Have a post survey with each volunteer about the test experience.
- We as the people conducting experiements need to agree on "tags/categories" to put the behavior of our subjects into and have separate google sheet to write this out as well. 


## Repl links:
  - Ruby : https://repl.it/join/caeojryi-dhanrajraghunat [Command to run the test - `irb test_game_of_life.rb`]
  - Go : https://repl.it/join/wapasawa-dhanrajraghunat [ Command to run the test - `go test main_test.go main.go`]
  - TCL : https://repl.it/join/uwcbifds-dhanrajraghunat [Command to run the script - `tclsh main.tcl`]

## Survey Links: 
  - Pre-experiment Survey: https://docs.google.com/forms/d/e/1FAIpQLSfymLBTOD1ubXjkKeXgVS6CBT2cXCHx2VBMEugiz02n7MLKjg/viewform
  - Post experiment survey: https://docs.google.com/forms/d/e/1FAIpQLScM3CTxS5b707sBqsoVkl52pY-AYcThBgr37Q0SLIptzHlkTg/viewform?usp=sf_link
