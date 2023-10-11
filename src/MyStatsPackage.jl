module MyStatsPackage

using ProgressMeter
include("statistic_functions.jl")

export rse_sum
export rse_mean, rse_tstat, rse_std
export printOwner
export printContributor
export printConfusedContributor

end
