# DONE

## Introduction

The 'this logic' paragph is a bit odd. I think you need to have a think about the difference between accommodation, prediction, and process. As I understand it, all you did was fit SUSTAIN to the categorization accuracy data. So, as you were successful, you showed that SUSTAIN could accommodate the accuracy data. You further showed that a byproduct of this accommodation was a prediction of higher recognition performance. This prediction comes from the process of recruiting more clusters for II than UD. This process by which the recognition performance prediction is made leads to a further prediction. More clusters means more HPC activity, because its the HPC that does cluster making, according to SUSTAIN. All aspects here are **findings** i.e. it did not have to be the case that SUSTAIN could accommodate the categorization accuracies. It did not have to be the case that, having done so, it got the recognition and the HPC activity right too. More generally, I think your foreshadowing too much here. What you should be saying at this point is that there's a prima facie case that SUSTAIN might be able to predict both the recognition and HPC results, and the purpose of this paper is to find out whether it does. 

p. 1- That sentence about original use of II and UD structures is factually correct but clunkily/agrammatically expressed. See if you can have another go at the phrasing. 
p.1 - "UD structure have a vertical decision bound"- nope, it can also be horizontal
When referring to Figure 1, always use the form "Figure 1 (upper row)", "Figure 1 (upper right panel) etc. unless you mean to refer to all four panels. Better yet, label the four panels A-D and refer to them thus.
The discussion of Figure 1 on page 1 talks a lot about boundaries and yet no boundaries are marked on the Figure. This is particular odd when you talk about UD defined as brightness greater than x, when there is no visible boundary on the graph, not any axis value marked x. You should probably add boundary lines if you're going to write about UD / II like this.
The text on Figure 1 is much smaller than the text of the paper itself. This is generally something to be avoided, and in this case it's so small it's hard to read.
There is shading on Figure 1 (shades of grey) which is not explained. It seems like it's meant to represent the brightness of the stimulus? But that's really odd, because the size is not represented (all plot symbols the same size). I suggest removing the shading.
p.1 - Plural of axis is axes
p.1 - This is the correct form for defining an acronym based model on first introduction "...taken as evidence for the COVIS model (COmpetition between Verbal and Implicit Systems; Ashby, Paul & Maddox, 2011)"
p.1 - A sentence should still make sense if you expand the acronym. So, for example, the sentence "accuracy in UD and II ... dependents on which system ..." is wrong because the phrase 'category structure' is missing, as is more obvious if you imagine expanding the acronyms "accuracy in undimensional and information-integration depends on which system.."
p.1 with the experimental designs add: of several COVIS-inspired experiments
p.1 decision bound analyses themselves -> decision bound analyses applied
"Recent work also point out...Rosedahl, 2019" -> "In turn, some of these alternative-to-COVIS explanations have been critiqued (Ashby, Smith & Rosedahl, 2019). The debate continues. "  
Now break to a new paragraph. Write some connecting text of the form. "The current paper further examines some of the alternative-to-COVIS explanations of how people classifiy II and UD structures. Specifically, the way COVIS explains how..." and then use your text again from there on.
Paragraph "Carpenter found that the medial..." wording is a bit clunky. Try a rephrase. Maybe be just a matter of talking about 'a' category learning task rather than 'the'. And then in the next sentence, it's not a prediction it's a result. And it doesn't 'contradict to' COVIS. It contradicts the predictions of COVIS. I'm pretty sure if you just go through this bit again you'll be able to express things a bit more accurately/ elegantly.
'two architectures are mathematically specified' -> 'two architectures are specified . You haven't talked about the maths, and often COVIS people don't either.
'with the differences and overlap' -> 'with the differences'. Yes, the large degree of whole-brain overlap is a bit of a problem for COVIS, but you didn't actually mention this was a result until now, and it's a weaker and harder to explain result than a difference clearly in the wrongly direction. So, I'd focus on the difference.
p.2 - punctuation and pluralization errors in para 1.
The final sentence of first para and the link between Carpenter 2016 and Edmunds 2016 is clunky - perhaps do something oike "Given Carpenter's observation of greater HPC activity in II than in UD structures, one can further predict, contrary to COVIS, that there will be better postrecognition memory for  exemplars in  II than in UD structures. Edmunds et al. (2016) directly confirmed  this prediction, find better recognition memory..."
a more extensive work -> a more extensive investigation
US spelling. So Modeling, not Modelling.
'explanation of these results' -> explanation of the results of both Carpenter et al. 2016 and Edmunds & Wills 2016.
"SUSTAIN is one model within the single-system approach to modelling categorization, and is able to accommodate..."
stimuli remains -> stimuli remain (grammar)
Mack reference should probably be at end of sentence, not in the middle?

## Description of SUSTAIN

OK, now entering "Description of SUSTAIN"
Widrow-Hoff is 1968 not 1988.

## Simulation

Now entering simulation of Edmunds
Here, you might make use of the accommodate / predict distintction I talked about earlier...to replace repeated use of the term 'capture'.
"fitting sustain to an asbtract design similar to edmunds" - sounds like we're hiding something. What's wrong with "fitting SUSTAIN to the Edmunds et al. (2016) experiment?"
"a 24 stimuli" -> "24 stimuli"
Emphasize that phase 1 'training' is categorization.
It's great that you cite the 2017 PLM paper, but you'll also need to cite the reference below, which is returned by "citation("catlearn")" because SUSTAIN of course wasn't in catlearn in 2017 -- you wrote it later.
Across all four problems -> across all four categorization problems.
Presumably SUSTAIN was reset between problems? Worth saying so...
on each iterations -> on each iteration
and was used -> and were used
Table 1 - there are 4 decimal places, but the legend says 9. Legend also says Table has upper bounds but it doesn't.
best set of parameters
now on page 4.
Sentence "Similarly SUSTAIN encountered all four trial orders" seems unnecessary as you already said this.

This is more for future work given the deadline, but is seems a bit odd that - if trial order is so important - 1000 trial orders weren't used at each step of the parameter search. What y ou may have ended up doing here is getting stable results for the parameters you chose, but they may not be the best parameters because you didn't stablise the model during parameter search. I don't think it matters much given that the fit is good enough to make your point. So, as I say, don't address in this MS, but perhaps bear in mind for future work.
Similarly you should be able to find a better expression for "This is supplemented.."
II strcutures are harder to learn than UD in this experiment. You need to add that caveat, as at least in principle the ideal II/UD experiment is perfectly matched on problem accuracy.
THE enormous BF is for the model, right? Perhaps worth specifying as you're also talking about human performance in this para.
stimuli is -> stimuli are
colour -> color
Recognitions Score -> Recognition Score
"A comparison of d’ between SUSTAIN
and human data yields a mean difference of 0.023. This dif-
ference of d 0 and II and UD results from the difference in the
number of recruited clusters between the two structures." - don't really get that sentence. You start by discussing a difference between model and human, and then you say something that only applies to the model? I think what's actually going on here is the the sentence "A comparison" is just badly placed here. It should be perhaps the 2nd sentence of this paragraph.
"Higher number of
clusters recruited will be located more closely" --- I think you mean something like "Where SUSTAIN recruits a large number of clusters, these clusters will generally be closer to the stimulus representations presented in the recognition memory test"?

## Discussion


last page full page:
scrutiny which -> scrutiny, and which
A great care -> great care. And yes, this is fair, but I'm not sure the caveat needs to be said, does it? It's something that I think anyone trying this extension would eventually work out they had to do anyway 🙂
You should probably make the OSF repo public now and replace the reviewer-only link with the public one.
accommodate both structures -> accommodate the classification of both UD and II category stgructures
