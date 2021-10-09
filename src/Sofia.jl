module Sofia
using ForwardDiff

export F, Fs, Fs!,
    grad, grad!, grads!, grads,
    H!, Hdotv!, Hdotv, 
    BHHH!, BHHHdotv!, BHHHdotv, 
    AbstractStochasticModel, AbstractModel, Model,
    IsUpdatable, Updatable, NotUpdatable, Nobs
include("gen.jl")
include("struct.jl")
include("code.jl")

end # module
