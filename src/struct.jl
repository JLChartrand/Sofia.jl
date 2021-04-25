abstract type IsUpdatable end
struct Updatable <: IsUpdatable end
struct NotUpdatable <: IsUpdatable end

abstract type AbstractModel{U <: IsUpdatable} end
struct Model{T <: IsUpdatable} <: AbstractModel{T}
    F::Function 
    grad!::Function
    H!::Function
    Hdotv!::Function
    function Model(F::Function, grad!::Function = genGrad(F), H! = genHes!(F), Hdotv!::Function = genHdotv!(F), upd::Bool = false)
        UPD = upd ? Updatable : NotUpdatable
        return new{UPD}(F, grad!, H!, Hdotv!)
    end
end


abstract type AbstractStochasticModel{U <: IsUpdatable} <: AbstractModel{U} end
function Nobs(mo::AbstractStochasticModel)
    #must be defined for most optimisation routines
    return -1
end
