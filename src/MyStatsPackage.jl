module MyStatsPackage

using ProgressMeter
include("statistic_functions.jl")

export rse_sum
export rse_mean, rse_tstat
export printOwner
export printContributor
export printConfusedContributor

end
