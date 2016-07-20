################################################################################
# NOTES:
# Perhaps the functions could have an argument category, which defaults to 
# all, but if you specify, it would use a subset of relevant items for the 
# sample space. (So more would apply to your problem).
# In addition, another function could be 'mix', which would suggest items 
# to blend your object or idea with.  I.e. if the category were 'iphone apps'
# it would have a list of apps like 'angry birds' and 'words with friends.'
# etc. 
#
# Possible Categories: movie plots or premises, software apps, 
# industrial design, electronic design, marketing, 
# all of the industries in the economy, video games or board games,
# chemistry, biology, math, econ, maybe business ideas, paintings,
#
################################################################################

setwd('/Users/jasonbell/Desktop/Ideas/Creativity Toolbox/IdeaBlender')
cons <- read.table("concepts.txt", header = TRUE, quote = "\"", 
	stringsAsFactors = FALSE)[, 1]
trans <- read.table("translations.txt", header = TRUE, quote = "\"", 
	stringsAsFactors = FALSE)[, 1]
lc <- length(cons)
lt <- length(trans)


busmods <- read.table("BusinessModels.txt", header = TRUE, 
	quote = "\"", stringsAsFactors = FALSE)[, 1]
gamebusmods <- read.table("GamingBusinessModels.txt", header = TRUE, 
	quote = "\"", stringsAsFactors = FALSE)[, 1]
lb <- length(busmods)
lg <- length(gamebusmods)
abm <- c(busmods, gamebusmods)
lbm <- length(abm)

################################################################################
#  Functions
################################################################################

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

bm <- function(string = "your object or idea", category = "all") {
	if (category == "all") {
		spot <- floor(runif(1, min = 1, max = lbm + 1))
		element <- abm[spot]
		a <- paste('for', string, 'try', element)
		cat(a)	
	} else if (category == "games" | category == "game") {
		spot <- floor(runif(1, min = 1, max = lg + 1))
		element <- gamebusmods[spot]
		a <- paste('for', string, 'try', element)
		cat(a)	
	} else if (category == "business models" | category == "business" |
	category == "general") {
		spot <- floor(runif(1, min = 1, max = lb + 1))
		element <- busmods[spot]
		a <- paste('for', string, 'try', element)
		cat(a)	
	} else {error('invalid category')}
}


