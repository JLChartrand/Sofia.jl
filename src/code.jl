F, grad!, H!, Hdotv!, BHHH!, BHHHdotv!, Fs, grads!


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
