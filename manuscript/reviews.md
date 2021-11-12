# CogSci Reviews

## Reviewer 4 (metareviewer)

Type of Submission
Cognitive Science ; Neuroscience ; Psychology

### The Review

The paper received three detailed and expert reviews. I think the
reviewers for their time under the difficult circumstances and for the
quality feedback. Overall the assessment put this paper somewhat on the lower
scale. However, in terms of the relevance to the conference I think people were
in agreement this is a solid Cog Sci submission.

There are several important issues that the reviews bring up that make me think
this is a pretty "preliminary" report. There are lots of details missing that
make it hard to evaluate the work (not just the modeling aspects which are
reported elsewhere but the details of the simulations). Also the link between
the models and hypothetical neural measures is extremely loose. While some of
the past work with SUSTAIN and COVIS has had a similar kind of "lose analogy"
type comparison I think the field is moving into closer comparisons. For
instance, a lot of recent work with SUSTAIN models the trial-by-trial dynamics
of neural signals and relates them to computations in the model.

This also feels one sided and somewhat analogous to the dual/single system
debate of several decades ago now. Appeals to parsimony only get you so far,
and even then one would want to see more systematic comparisons between a range
of models that have single systems (including things like exemplar models which
have been invoked to explain the UD/II distinction).

I think because this is seemingly preliminary, but might interest and benefit
from feedback from the conference I am going to stick with the slightly higher
modal rating.

Minor point:
I don't understand how you are getting negative d' scores. Under usual
considerations this would the absolute distance between the target and noise
distributions?

## [DONE] Reviewer 1 (reviewer)

Type of Submission
Cognitive Science ; Computer Science ; Psychology

### The Review 1

## Reviewer 2 (reviewer)

Type of Submission
Cognitive Science ; Psychology

### The Review

Finally, the title.. not sure what it means that SUSTAIN "captures" category
learning, recognition and hippocampal activation. Authors did not present any
neural data, the recognition effects as described are somewhat inconclusive
(see (2) above), and "category learning" seems broad, unless authors meant 
average performance.

LD 2021-04-21T12:19:17+0100: Good point. Ran out of space and time, took a shot,
didn't work out, need to fix it.


## Reviewer 3 (reviewer)

Type of Submission
Cognitive Science ; Psychology

### The Review

The strong predictions/conclusions regarding HPC and MTL seem unwarranted as
this work is based on purely behavioral data. While the patterns may generally
be in line with observations in the MTL, this is highly qualitative and the
major conclusions should stick to the behavior that is being simulated.
This limitation is highlighted by the fact that neural data from category
learning itself (i.e., encoding), not recognition, form the basis for these
conclusions, where different processes are likely at play. The HPC has been
shown to be involved in more multidimensional learning, where SUSTAIN predicts
more clusters. This makes sense as HPC is generally involved in encoding new
information and retrieving more details. However, in SUSTAIN, recognition
seems to be driven by a global familiarity signal in terms of the number
of clusters activated. Such familiarity effects have been mapped to cortex,
not HPC. I would recommend avoiding strong conclusions about the brain
altogether since the focus here was on simulated behavior. Alternatively,
a much more nuanced discussion of these distinct neural processes is warranted.

LD 2021-04-21T12:31:00+0100: Good point, and it seems like a good idea
to treat them as hypothesis for further testing. Nonetheless, the first
sentence tells me that this reviewer did not "read" the paper.

2021-04-30T14:26:11+0100: Recognition is driven by cluster activation after
lateral inhibition. If many clusters are activated, the confidence in the choice
is reduced and smaller activations might entail a new response depending on the
$k$ parameter.

The memory data can be explained by differences in task difficulty, as
II requires more attention/engagement than UD. On the one hand, this is
not necessarily problematic, as difficulty is related to the proposed
cluster-number mechanism. However, difficulty and number of clusters
activated can be directly compared in their contributions to memory by
using proximity to the decision boundary as a correlate of difficulty. If, at
recognition, the number of clusters activate by an item is a better predictor
of memory than that item’s proximity to the boundary, that would provide
convincing evidence for the proposed mechanism.

LD 2021-04-21T12:34:59+0100: It is a great idea, but is beyond the current
work we can take on.

2021-04-30T14:26:11+0100: Recognition is driven by cluster activation after
lateral inhibition. If many clusters are activated, the confidence in the choice
is reduced and smaller activations might entail a new response depending on the
$k$ parameter.

# DONE

## Reviewer 1 Responded

Summary:
The author(s) present simulations of unidimensional and information-integration
category learning using the SUSTAIN single systems framework. They discuss
results from fMRI experiments which implicate the hippocampus and medial
temporal lobe in II category learning. Their simulated results seem to match
human behavioral results both in terms of accuracy and recognition memory
performance.

1) Originality and significance
The implementation of SUSTAIN to explain UD and II category learning is novel
and using the results to interpret findings from fMRI studies is very interesting.
This work has the potential to be quite impactful.

2) Technical soundness
The implementation of the SUSTAIN models generally seems technically sound. I
really appreciate the inclusion of the code for the simulations provided
through OSF (though I did not click the link to maintain anonymity of the
author(s)).

A) There seem to be some important details missing from the simulation methods.
How many simulated subjects were there? Are the parameters presented in Table
1 specific to a particular model or is this the same across all models? It is
not completely clear how a single value is output here, but presumably multiple
simulated subjects were run.

B) I appreciate the reporting of the mean and standard deviation for some of
the outcomes (in Table 4, for instance), but this should be included for all
outcomes (Table 2, Table 3).

LD 2021-04-21T11:53:54+0100: Good point, needs to be amended.

C) The author(s) do not quantitatively compare any of their findings either
within UD/II in the simulated subjects or between the simulated subjects and
the human subjects. For instance, the author(s) claim "better recognition
performance" but no comparative statistics are reported. It is therefore
unknown to the reader if this is a statistically meaningful difference or not.

LD 2021-04-21T11:54:25+0100: Good find. We are interested in the ordinal
patterns of the data, but it is a simple enough test to do. Also,
there is no point in doing it between simulated subjects and human
subjects. We found the best fitting parameter already, isn't that close enough?

F) To be more in line with the terminology of COVIS, the author(s) could change
their terminology to unidimensional rule-based structures, rather than just
unidimensional.

LD 2021-04-21T12:00:34+0100: One of the underlying goal of the current approach
is to separate phenomena from theory. I feel that changing the terminology to
fit to a theoretical framework undermines this attempt. Nonetheless, we will
acknowledge the different usage of terms and will justify ours.

(4) Breadth of interest for broad Cognitive Science audience
This work has broad appeal for the Cognitive Science audience, touching on
psychology and cognitive science as well as computational modeling and
neuroscience. The authors do a nice job at bridging these areas and it would
be interesting to a broad audience.

5) Clarity of writing
I have a few minor points here:

A) The claim that UD and II categories are 'perceptually the same' is a bit
misleading, as they are not in this case. They do not use the same stimuli for
the two categories, where this argument might be clearer.

LD 2021-04-21T11:59:25+0100: Good point, I should clarify what I mean.

B) COVIS and SUSTAIN should be spelled out when initially described. They are
acronyms.

C) The author(s) might want to explain in more detail the specific 'behavioral
and neural phenomena" that SUSTAIN is able to accommodate. It is not clear
what kind of breadth we are talking about here.

LD 2021-04-21T12:00:01+0100: Included in one paragraph - this is a 7 page paper.

D) Figure 1 shows only two of the four conditions. The description in the method
in reference to Figure 1 should clarify this: "Figure 1 shows how these stimuli
are distributed in the 2D physical stimulus space."

LD 2021-04-21T12:00:13+0100: Good point.

E) It should always be clear when the author(s) are looking at human data or
simulated data or both. For instance, in the Recognition sub-section, it is not
immediately clear who the participants are when the author(s) say "for each
participant."

LD 2021-04-21T12:00:24+0100: Good point.

The author(s) effectively describe the evidence that COVIS is controversial,
but need to provide more evidence of why the single systems account presented
here through the SUSTAIN model is necessary for explaining these particular
behavioral and fMRI results. I am left wondering if COVIS could explain the
results. I think the author(s) would need to provide more information about
the competing predictions of these models and specifically outline why COVIS
does not adequately explain the human and simulation results. Some information
comes at the very end of the Discussion, but this should really be a main focus
of the paper, addressed in the Introduction as well.

LD: I decide what the main focus of the paper is.

C) I appreciate the author(s) intention in discussing the criticisms of COVIS,
but I think it comes off as a little one-sided. Single vs dual systems of
category learning is a fairly controversial topic and it deserves to be
addressed with care. Dismissing "procedural accounts of II problems" as "based
on a range of experiments that received considerable scrutiny which turn out to
have alternative explanations (Newell, Dunn, & Kalish, 2011; Stanton & Nosofsky,
2007)" is not presenting a completely fair view. The dual systems model also has
empirical support, but of course, as the author(s) point out here, it is not
equivocal. I think more care should be taken in presenting these two
perspectives. One recent paper to take a look at here:

Ashby, F. G., Smith, J. D., & Rosedahl, L. A. (2020). Dissociations between
rule-based and information-integration categorization are not caused by
differences in task difficulty. Memory & Cognition, 48(4), 541–552.
https://doi.org/10.3758/s13421-019-00988-4

B) More specifically, it is not clear what the predictions from COVIS are with
regard to the hippocampus or MTL. When discussing the Carpenter et al. (2016)
results, the author(s) state: "This prediction contradicts to the COVIS account
of how II structures are learned." But it is not clear how it contradicts.
The author(s) are similarly vague in the sentence: "The way COVIS explains
how people learn II structures was also questioned by..." -- what is "the way?"
The author(s) assume an expert audience here in the particulars of these
theories, but I do not think that this is warranted for the CogSci Proceedings.

LD 2021-04-21T11:58:45+0100: Good point. More explanation is needed.

A) There is a general lack of clarity in the discussion of the single system
vs. dual systems accounts in category learning. The author(s) do not present
the necessary details of COVIS or SUSTAIN to put the simulations in context.
What is COVIS unable to explain that SUSTAIN is able to explain in this set of
simulations? What are the contrasting predictions of COVIS and SUSTAIN in this
particular context? These questions are not answered in this submission, but
are fundamental for determining the implications of these simulation results on
theories of category learning.

LD 2021-04-21T11:55:28+0100: I have to make it clear that we do not try to
disconfirm COVIS in any way. We are simply showing that SUSTAIN can do these
tasks. This is more like we are opening a door and we do not contrast the
models specifically. Also, it would be good to elucidate where they diverge.

## Reviewer 2 responsed

This paper provides a simulation using the SUSTAIN model of categorization of
recognition effects in a perceptual categorization task in which humans learned
category boundaries for problems in which one or two dimensions were relevant
for categorization (i.e. UD and Type II problems). The claim, as I understand
it, is that SUSTAIN, which is a clustering based model, is a better account of
these effects than COVIS, an account for how humans learn categorization
decisions using an explicit rule-based strategy (i.e. by verbalizing a decision
boundary).

Comments:

(1) the submission's originality and significance

The submission is original in that it directly attempts to simulate and fit
SUSTAIN to some previously reported recognition memory effects in the literature
(Edmunds et al. 2016), which according to the authors, hasn't been done before.

LD 2021-04-21T12:02:37+0100: No model was fitted to these tasks other than
COVIS - irrespective of the part of the data being fitted.

More broadly, the paper has significance in that it explicitly compares two
structure learning models (COVIS and SUSTAIN) which are fundamentally different
in the type of representation they propose (rules vs. clusters). That said,
I am not totally sure why the authors chose to frame the two as mutually
exclusive. Couldn't COVIS also be used for learning both types of problems?
Even in unidimensional settings, verbal labels ought to help. E.g. I can create
a category boundary by saying "bright squares are daxes" and "dark squares are
bims".

LD 2021-04-21T12:05:03+0100: There is a misunderstanding here about COVIS and
the overall purpose of the current paper. I have to be more careful and much
more explicit about what I am doing here.

(4) breadth of interest for the broad Cognitive Science audience

With some adjustments to the framing, this paper could be of interest both to
category learning experts, and also to people more broadly interested in
structure learning.

(5) clarity of writing. Please be as detailed as you can: longer reviews are
more helpful to the Committee.

The lack of clarity is mostly technical, as described in (2). Otherwise, I
generally found the paper relatively clear and easy to follow.

The paper is technically fine, though I do have some specific suggestions that
might help sharpen the argument:

- I felt that the description of SUSTAIN assumes a bit too much prior knowledge.
For example, the authors make no mention of how attention weights are updated,
but attention does come up later as a factor which interacts with how many
clusters SUSTAIN requires to accommodate the behavioral results; this may be
a matter of conference norms (hard to fit all the relevant content in a short
paper), but hopefully the authors can go through and at least give a
newcomer the knowledge needed to better understand the results

LD 2021-04-21T12:06:34+0100: Good point - I am on it.

- The fitting procedure is a bit opaque; the authors state "SUSTAIN's
parameters were adjusted to minimize the sum of squared errors between the
overall mean categorization test phase accuracy of SUSTAIN and humans";
did authors only fit to group means? Or to average accuracy of individual
participants? In general, this procedure seems fairly underconstrained; for
example, how would SUSTAIN behave to accommodate more random responding by
individual participants in the Type II trials (possibly as a result of poorer
learning)? Wouldn't that also manifest in a larger number of clusters? I'd
find the analysis more convincing if the model were fit, if not to individual
participants' *responses*, then at least to their individual task performance

LD 2021-04-21T12:07:24+0100: good point, but we don't have the data. Also,
it depends on the response threshold parameter. Poor performance can be achived
by simply setting the learning parameter to 0. So SUSTAIN ends up either recruiting
many clusters, or recruits two and nothing more. Nonetheless,
that wouldn't result in the level of accuracy we see at test, mainly
because attentional tuning would also be shut down. I don't think this
reviewer understands what is happening here. I am unsure what responses
and performance means here. Performance depends on how they respond.


- The intro argument that MTL is more active when people learn the Type II
structure seems a bit like reverse inference to me, particularly because I
imagine this finding would be confounded by lots of other factors (e.g.
difficulty); but that might be a matter of the detail in which these findings
are described

LD 2021-04-21T12:15:57+0100: I think difficulty is part of the picture, not
as a confound but as a cause. Difficulty is what prompts SUSTAIN to recruit
more than 2 clusters. It is not reverse inference to say that MTL is more active
in II tasks. It is reverse inference to say, that MTL/HPC is more active in II,
MTL/HPC has been predominantly involved in memory, therefore II involves memory.
It is nonetheless a deductively valid inference as HPC activations reliably
correspond to memory performance. Nonetheless, we do not make this claim.
Our argument is that MTL/HPC is more active in II than UD, MTL/HPC has been
predominantly involved in memory and its activation corresond to recognition
performance, learning II results in better recognition performance than UD.

- The mechanism by which more clusters in SUSTAIN leads to more HPC activation
was somewhat obscure, as it seems to be based on simple contrasts between
unidimensional vs. information integration blocks -- as the previous one,
without more detail on what exactly is the proposed mechanism trial by trial
and how neural data support it, this datapoint is hard to evaluate

LD 2021-04-21T12:16:26+0100: Good point. Maybe include it a bit more
like a hypothesis.
- Is the d' difference in Type II problems between SUSTAIN and humans
statistically significant? Given that SUSTAIN appears to show higher d than
humans do in the recognition memory task for Type II problems, I wonder if
humans may not have actually learned the category boundaries with the
granularity predicted by SUSTAIN, even though on average they perform as well
as the model

LD 2021-04-21T12:07:57+0100: We were interested in whether SUSTAIN captures
the ordinal pattern in the data. Humans also learned category boundaries,
as indicated by mean accuracy for each problems in Table 2. Also,
humans could do the categorization task as evidenced by the behavioural
results in Table 2.

- The authors also mention, but don't show in the table, that SUSTAIN predicts
higher false alarms than humans for UD structures, which is quite interesting
and also in line with the idea that structuring this space with clusters may be
a bit more sophisticated than what humans actually do; I'd encourage the authors
to report the full breakdown of those d" results and do the appropriate
statistical tests, as they are a bit more informative than fitting only to
average test performance

LD 2021-04-21T12:13:19+0100: Sounds like a good idea. Also, negative d prime
indicates higher false alarm rates. This suggestions are also vague.

A minor related point is that it’s unclear where the .0071 difference between
the model and the human data comes from. It looks like II shows an average
difference of .03 and UD .016; both numbers are larger
than the reported average difference.

LD 2021-04-21T12:20:34+0100: probably rounding error. Need to double check.

2021-04-30T12:36:05+0100: Arithmetic error (needed absolute values).

(2) technical soundness

- The authors state: "the mean, and variation, in the number of clusters is the
consequence of how trial-order interacts with the following mechanism:
similarity, attention and error-driven cluster recruitment"; this very
interesting, but almost impossible to evaluate based on the results; there are
many ways these parameters could interact, and because the model is only trying
to capture average performance at test, I worry that those interactions are
difficult to tease apart -- part of the confusion stems for not having a better
description of how the attentional mechanism (1) is updated (2) interacts with
clustering. But it would also generally help to have some kind of analysis that
at least reveals possible ways in which parameters can interact -- e.g. by doing
a grid search and plotting the objective function (sum of squared errors) as a
function of pairs of parameter values

LD 2021-04-21T12:14:04+0100: Good idea. I am afraid that it is beyond what we
could accomplish in the time we have for resubmission. Include something
about it in the discussion and maybe talk with Andy and Charlotte if we could
extend the paper a bit more? Maybe have a student project next year?

2021-04-30T12:20:04+0100: We do not interpret parameters here. It is not
parameters that interact, but mechanisms. We try to reverse engineer the
behaviour of SUSTAIN. SUSTAIN is not a black box. I also don't know how
plotting the two parameters would help to see how they interact as we would
still need to see the number of clusters and actual accuracies in the two groups.

(3) theoretical merit

Reiterating some points from (1), framing the findings by treating these
competing accounts (SUSTAIN and COVIS) as hypotheses would be a bit more
satisfying. That opens an interesting discussion about when one type of
representation might be desirable over the other. For instance: could it be
that COVIS is more of an online encoding account of learning category labels,
while SUSTAIN explains phenomena we more closely associate with retrieval? This
reliance on multiple systems is in line with ideas from complementary learning
systems theory, which posits that a lot of the representational change SUSTAIN
assumes occurs offline. Something like this might even be at play in short term
tasks, when the learning and test phase are kept separate, as was done in the
paradigm the authors are simulating. Could the controversy surrounding COVIS vs.
SUSTAIN be related to what aspects of the behavior are modeled (e.g. performance
at test vs. during acquisition)? This framing could also help authors get out of
the bind that without a direct model comparison, it's kind of difficult to
outright reject COVIS based solely on these results

LD 2021-04-21T12:18:47+0100: This argument is interesting, but it relies on a
misunderstanding of the COVID framework. These models are models of human cognition
not data. Both can accommodate training, test, and other aspects of the data
as well (eye-tracking data, recognition and so on).

## Reviewer 3 Responded

The current paper aims to show that the single- vs dual-process model (SUSTAIN)
can account for learning behavior, recognition memory behavior and neural effects
in an established category learning task. By simulating previous data, the
authors show that SUSTAIN creates more clusters during multidimensional
(information integration) compared to unidimensional category learning, which
they link to greater recognition memory and neural effects in the MTL system.
I find this work to be a nice complement to previous applications of SUSTAIN
in that it specifically addresses the effects of the cluster-forming mechanism
on later memory. However, I have some significant concerns outline below in
particular regarding very low memory and drawing conclusions about the role of
the MTL.

The main conclusions of the paper rely on recognition memory performance that
appears to be close to chance (II) or at chance (UD; table 4). To demonstrate
that these results are not pure noise, evidence should be provided that there
is above-chance memory in the behavior. This can be done by comparing d-prime
to 0 at the group level and/or running randomization tests within subject. In
the memory literature, it is standard to remove participants who do not show
evidence for above-chance memory, as there is no way to know if they are
performing the task. Here, it is important to show that subjects who are at
chance are not the ones driving the condition differences. If the condition
differences hold on the subset of subjects that show above-chance memory, that
would help substantiate the conclusions. Similar analyses should be run with
the model simulations which also appear close to chance overall. It may also
be helpful to show individual subject/simulation data.

LD 2021-04-21T12:24:12+0100: This is something that we need to acknowledge
in the discussion. Maybe also reference Charlotte's thesis. Nonetheless,
I do not think we should remove subjects.

If recognition is driven by the sum of cluster activations, as in SUSTAIN,
it is unclear why more clusters would necessarily give rise to higher d-prime.
Instead, more clusters should lead to increased “old” responses to both
“old” and “new” items, increasing the hit rate as well as the false alarm
rate. Does this prediction bear out?

LD 2021-04-21T12:32:29+0100: Yes, and that is what we see in the simulated data.
Nonetheless, it also depends on the decision mechanism and the threshold parameter.

- In general, I found the line of thinking implicating the neural results less
convincing
- This is maybe a minor point, but in Figure 2, it might help to plot not just
the cluster means, but also the width? Or at least show somehow how category
membership is determined based on the clusters

LD 2021-04-21T12:17:02+0100: Exactly like Charlotte said. I will try to do it.

2021-04-30T12:20:42+0100: It is impossible to do in such a small graph.
Ideally, I would designate half a page for the graph, but it is not feasible here.

