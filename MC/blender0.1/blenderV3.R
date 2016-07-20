################################################################################
# NOTES:
# Perhaps the functions could have an argument category, which defaults to 
# all, but if you specify, it would use a subset of relevant items for the 
# sample space. (So more would apply to your problem).
#
# Possible Categories: movie plots or premises, software apps, 
# industrial design, electronic design, marketing, 
# all of the industries in the economy, video games or board games,
# chemistry, biology, math, econ, maybe business ideas, paintings,
#
# Filters can be applied by the user when specifying a category, by the
# function according to some metric, or by the user after seeing the 
# output.  It might be a good idea to search for templates of the
# style from the Israeli research team that categorized commercials.
# Perhaps the solution is just to catalog success.
################################################################################

setwd("/Users/jasonbell/Desktop/Ideas/MI/blender")
cons <- read.table("concepts.txt", header = TRUE, quote = "\"", 
	stringsAsFactors = FALSE)[, 1]
trans <- read.table("transformations.txt", header = TRUE, quote = "\"", 
	stringsAsFactors = FALSE)[, 1]
apps <- read.table("apps.txt", header = TRUE, quote = "\"",
	stringsAsFactors = FALSE)[, 1]
objects <- read.table("objects.txt", header = TRUE, quote = "\"",
	stringsAsFactors = FALSE)[, 1]
boardgames <- read.table("boardgames.txt", header = TRUE, quote = "\"",
    stringsAsFactors = FALSE)[, 1]
bathItems <- read.table("BathroomItems.txt", header = TRUE, quote = "\"",
    stringsAsFactors = FALSE)[, 1]
Gobjects <- c(apps, objects)
busmods <- read.table("BusinessModels.txt", header = TRUE, 
	quote = "\"", stringsAsFactors = FALSE)[, 1]
gamebusmods <- read.table("GamingBusinessModels.txt", header = TRUE, 
	quote = "\"", stringsAsFactors = FALSE)[, 1]
abm <- c(busmods, gamebusmods)
research <- read.table("Research.txt", header = TRUE, quote = "\"",
    stringsAsFactors = FALSE)[, 1]

################################################################################
#  Functions
################################################################################

transform <- function(string = "your object or idea") {
	t <- sample(trans, 1)
	a <- paste('for', string, 'try using the transformation:', t)
	cat(a)
}

apply <- function(string = "your object or idea") {
	c <- sample(cons, 1)
	b <- paste('for', string, 'try applying the concept of:', c) 
	cat(b)
}

blend <- function(string = NULL, category = "all") {
	if (category == "all") {
		elements <- sample(Gobjects, 2, replace = FALSE)
		if (is.null(string)) {
            a <- paste('try blending', elements[1], 'with', elements[2])
		} else {
            a <- paste('try blending', string, 'with', elements[1])
		}
        cat(a)	
	} else if (category == "apps" | category == "app") {
		elements <- sample(apps, 2, replace = FALSE)
    	if (is.null(string)) {
            a <- paste('try blending', elements[1], 'with', elements[2])
		} else {
            a <- paste('try blending', string, 'with', elements[1])
		}		
        cat(a)	
	} else if (category == "general") {
		elements <- sample(objects, 2, replace = FALSE)
    	if (is.null(string)) {
            a <- paste('try blending', elements[1], 'with', elements[2])
		} else {
            a <- paste('try blending', string, 'with', elements[1])
		}		
        cat(a)	
	} else if (category == "boardgames") {
        elements <- sample(boardgames, 2, replace = FALSE)
    	if (is.null(string)) {
            a <- paste('try blending', elements[1], 'with', elements[2])
		} else {
            a <- paste('try blending', string, 'with', elements[1])
		}        
        cat(a)
    } else if (category == "bathroom") {
        elements <- sample(bathroomItems, 2, replace = FALSE)
        if (is.null(string)) {
            a <- paste('try blending', elements[1], 'with', elements[2])
		} else {
            a <- paste('try blending', string, 'with', elements[1])
		}        
        cat(a)
    } else {
        error('invalid category')
    }
}

bm <- function(string = "your object or idea", category = "all") {
	if (category == "all") {
		element <- sample(abm, 1)
		a <- paste('for', string, 'try', element)
		cat(a)	
	} else if (category == "games" | category == "game") {
		element <- sample(gamebusmods, 1)
		a <- paste('for', string, 'try', element)
		cat(a)	
	} else if (category == "business models" | category == "business" |
	category == "general") {
		element <- sample(busmods, 1)
		a <- paste('for', string, 'try', element)
		cat(a)	
	} else {error('invalid category')}
}


