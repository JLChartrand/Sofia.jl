genGrad(F::Function) = (x::Vector, s::Vector) -> ForwardDiff.gradient!(s, F, x)
genHdotv!(F::Function) = (x::Vector, v::Vector, Hv::Vector) -> (Hv[:] = ForwardDiff.Hessian(F, x) * v)
genHes!(F::Function) = (x::Vector, H::Matrix) -> ForwardDiff.Hessian!(H, F, x)
