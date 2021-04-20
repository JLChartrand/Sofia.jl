abstract type IsUpdatable end
struct Updatable <: IsUpdatable end
struct NotUpdatable <: IsUpdatable end

abstract type AbstractModel{U <: IsUpdatable} end
struct Model <: AbstractModel{NotUpdatable}
    F::Function 
    grad!::Function
    H!::Function
    Hdotv!::Function
    function Model(F::Function, grad!::Function = genGrad(F), H! = genHes!(F), Hdotv!::Function = genHdotv!(F))
        return new{NotUpdatable}(F, grad!, H!, Hdotv!)
    end
end


abstract type AbstractStochasticFunc{U <: IsUpdatable} <: AbstractModel{U} end
