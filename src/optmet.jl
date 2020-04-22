module optmet

using Calculus

"minimum_nr() returns the minimum value of the given function, calculated by the Newton-Raphson method."

function minimum_nr(f, x, eps = 1e-5)
	fx = f(x)
	i = 0
	d = Calculus.derivative(f,x)
	dd = Calculus.second_derivative(f,x)
	h = d/dd
	while abs(h) >= eps
		d = Calculus.derivative(f,x)
		dd = Calculus.second_derivative(f,x)
		h = d/dd
		x = x - h
		fx = f(x)
		i = i + 1
		println("x: ", x, "   f(x): ", fx, "   step: ", h, "   iteration: ", i)
	end
	return fx, x
end

export minimum_nr

end # module
