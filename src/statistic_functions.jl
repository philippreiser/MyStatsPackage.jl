using ProgressMeter
#---
function rse_sum(elements)
    @assert all(!isnan,elements)
    rse_sum_result = 0
    @showprogress for (index, element) in enumerate(elements)
        rse_sum_result += element
    end
    return rse_sum_result
end
rse_sum(1:36) == 666
#---

#---
function rse_mean(elements)
    rse_mean_result = 1/length(elements)*rse_sum(elements)
    return rse_mean_result
end
rse_mean(-15:17) == 1
#---

#---
function rse_std(elements)
    rse_std_result = sqrt(sum((elements.-rse_mean(elements)).^2)/(length(elements)-1))
    return rse_std_result
end
rse_std(1:3) == 1
#---

#---
function rse_tstat(elements, σ=rse_std(elements))
    rse_mean(elements)/(σ/sqrt(length(elements)))
end
rse_tstat(2:3) == 5
#---

#---
struct StatResult
    x::Vector
    n::Integer
    std::Real
    tvalue::Real
end
function StatResult(elements)
    s = StatResult(elements, length(elements), rse_std(elements), rse_tstat(elements))
    return s
end
s = StatResult(2:10)
#---

#---
function printOwner()
    println("philippreiser")
end
printOwner()
#---

#---
function printContributor()
    println("sims1253")
end
#---

function printConfusedContributor()
    print("What is git? --Manuel")
end