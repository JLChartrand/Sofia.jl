#F, grad!, H!, Hdotv!, BHHH!, BHHHdotv!, Fs, grads!


function F(x::Vector{T}, mo::Model)
    return mo.F(x)
end

function grad!(x::Vector{T}, mo::Model, stack::Vector)
    mo.grad!(x, stack)
end

function H!(x::Vector{T}, mo::Model, stack::Matrix)
    return mo.H!(x, stack)
end

function Hdotv!(x::Vector{T}, mo::Model, v::Vector, stack::Vector)
    return mo.Hdotv(x, v, stack)
end
function BHHH!(x, mo::Model, stack::Matrix)
    prinltn("BHHH! not defined for Model")
    return zeros(1, 1)
end
function BHHHdotv!(x, mo::Model, v::Vector, stack::Vector)
    prinltn("BHHHdot! not defined for Model")
    return zeros(1, 1)
end
function Fs(x::Vector, mo::Model)
    prinltn("Fs not defined for Model")
    return zeros(1)
end
function grads!(x::Vector{T}, mo::Model, stack::Matrix)
    prinltn("grads! not defined for Model")
    return zeros(1, 1)
end
