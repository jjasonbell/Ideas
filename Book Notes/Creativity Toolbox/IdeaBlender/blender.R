setwd('/Users/jasonbell/Desktop/Ideas/Creativity Toolbox/IdeaBlender')
trans <- c(
'flip',
'rotation',
'resize',
'in vs. out',
'analog vs. digital',
'3D vs. 2D',
'push vs. pull',
'reemphasize' ,
'reparameterize',
'change of material',
'change of colors',
'make it ugly or make it pretty',
'opt in vs. opt out',
'change the height',
'flexibility vs. usability',
'form change',
'change in control mapping',
'fixed vs. variable',
'change in proximity',
'symmetric vs. asymmetric',
'conjunctive vs. disjunctive vs. compensatory'
)

cons <- c(
'value curve',
'symbiosis',
'what would Gates do?',
'returns to scale',
'crowdsourcing',
'minimalism',
'aesthetic-usability effect',
'devils advocate',
'skunkwerks',
'thermal mass',
'compounding',
'photosynthesis',
'consumption chain',
'imitation',
'survival of the fittest',
'uncanny valley',
'form follows function',
'80/20 rule',
'accessibility',
'advance organizer',
'affordance',
'anthropomorphic form',
'archetypes',
'biophilia',
'chunking',
'classical conditioning',
'cognitive dissonance',
'common fate',
'contour bias',
'convergence',
'cost-benefit',
'design by committee',
'desire line',
'exposure effect',
'halo effect',
'hawthorne effect',
'pygmalion effect',
'placebo effect',
'rosenthal effect',
'feedback loop',
'fitts law',
'form follows function',
'framing',
'garbage in, garbage out',
'decision paralysis',
'hierarchy of needs',
'horror vacui',
'iconic representation',
'flow/immersion',
'inattentional blindness',
'interference effects',
'inverted pyramid',
'law of pragnanz',
'product lifecycle',
'modularity',
'most advanced yet acceptable',
'most average facial appearance effect',
'nudge',
'ochams razor',
'performance load',
'performance vs. preference',
'personas',
'priming',
'proggressive disclosure',
'propositional density',
'prospect-refuge',
'scarcity',
'signal-to-noise ratio',
'surprise',
'telling a story',
'structural forms',
'wabi-sabi',
'anchoring and adjusting',
'consideration sets',
'drag reduction with spikes',
'mimicry of nature',
'natural selection'
'returns to scope'
)

lc <- length(cons)
lt <- length(trans)
translate <- function(string = "your object or idea") {
	tspot <- floor(runif(1, min = 1, max = lt + 1))
	t <- trans[tspot]
	a <- paste('for', string, 'try using the translation:', t)
	cat(a)
}

blend <- function(string = "your object or idea") {
	cspot <- floor(runif(1, min = 1, max = lc + 1))
	c <- cons[cspot]
	b <- paste('for', string, 'try applying the concept of:', c) 
	cat(b)
}


