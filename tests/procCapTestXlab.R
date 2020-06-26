# Load data
source("R/qcc.R")
source("R/spc.g.R")
source("R/capability.R")
source("R/utilities.R")
source("R/rules.R")
data(pistonrings)

diameter <- qccGroups(diameter, sample, data = pistonrings)

q <- qcc(diameter[1:25,], type="xbar", nsigmas=3, plot=FALSE)


# Generate Plot without xlab
plot.processCapability(processCapability(q, spec.limits=c(73.95,74.05)))

# Generate Plot with xlab.
plot.processCapability(processCapability(q, spec.limits = c(73.95,74.05)), title = "Custom title", xlab = "Custom labels")
