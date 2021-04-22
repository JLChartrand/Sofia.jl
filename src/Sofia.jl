module Sofia
using ForwardDiff

export F, grad!, H!, Hdotv!, BHHH!, BHHHdotv!, Fs, grads!,
    AbstractStochasticModel, AbstractModel, 
    IsUpdatable, Updatable, NotUpdatable
include("gen.jl")
include("struct.jl")
include("code.jl")

end # module
