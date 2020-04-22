using optmet, Test

@testset "newton-raphson" begin
	x, f = 1000.0, x -> x^4 -24x^3 +7x^2 - 11x + 420
	@test minimum_nr(f, x) == (-32524.475393806228, 17.812172762347867)
	x, f = 500.0, x -> x^4 - 7x^3 + 7x^2 - 77x +77
	@test minimum_nr(f, x) == (-387.5919553775244, 5.277905093806142)
end
