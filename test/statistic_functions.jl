@testset "unit tests" begin
    @testset "rse_sum" begin
        @test rse_sum([1,2,3]) == 6

        @test_throws AssertionError rse_sum([NaN,3,2])
    end

    @testset "rse_mean" begin
        @test rse_mean([1,2,3]) == 2
        @test rse_mean([1,3,6]) ≈ 3.333 atol=1e-3
    end

    @testset "rse_tstat" begin
        @test rse_tstat(2:3) == 5
    end
end

@testset "integration test" begin
    data1 = [43, 34]
    data2 = [16, 33]

    # Expected rse_sum_result
    expected_sum_of_mean = 63

    mean1 = rse_mean(data1)
    mean2 = rse_mean(data2)

    # Actual result
    actual_sum_of_mean = rse_sum([mean1, mean2])

    # Test
    @test actual_sum_of_mean == expected_sum_of_mean
end
