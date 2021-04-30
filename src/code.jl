#F, grad!, H!, Hdotv, Hdotv!, BHHH!, BHHHdotv, BHHHdotv!, Fs, grads!


function F(x::Vector, mo::AbstractModel)
    return mo.F(x)
end

function grad!(x::Vector, mo::AbstractModel, stack::Vector)
    mo.grad!(x, stack)
end

function H!(x::Vector, mo::AbstractModel, stack::Matrix)
    return mo.H!(x, stack)
end

function Hdotv(x::Vector, mo::AbstractModel, v::Vector)
    return mo.Hdotv(x, v, stack)
end

function Hdotv!(x::Vector, mo::AbstractModel, v::Vector, stack::Vector)
    return mo.Hdotv!(x, v, stack)
end

function BHHH!(x::Vector, mo::AbstractModel, stack::Matrix)
    prinltn("BHHH! not defined for Model")
    #return  zeros(1, 1)
end

function BHHHdotv(x::Vector, mo::AbstractModel, v::Vector)
    prinltn("BHHHdot not defined for Model")
    #return zeros(1)
end

function BHHHdotv!(x::Vector, mo::AbstractModel, v::Vector, stack::Vector)
    prinltn("BHHHdot! not defined for Model")
    #return zeros(1)
end

function Fs(x::Vector, mo::AbstractModel)
    prinltn("Fs not defined for Model")
    return zeros(1)
end

function grads!(x::Vector, mo::AbstractModel, stack::Array{Vector, 1})
    prinltn("grads! not defined for Model")
    #return zeros(1, 1)
end
