module Sofia
using ForwardDiff

export F, grad!, H!, Hdotv!, Hdotv, BHHH!, BHHHdotv!, BHHHdotv, Fs, grads!, grads,
    gradind, gradind!, Find, 
    AbstractStochasticModel, AbstractModel, Model,
    IsUpdatable, Updatable, NotUpdatable, Nobs
include("gen.jl")
include("struct.jl")
include("code.jl")

end # module
