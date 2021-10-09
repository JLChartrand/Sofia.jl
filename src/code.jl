#F, grad!, H!, Hdotv, Hdotv!, BHHH!, BHHHdotv, BHHHdotv!, Fs, grads!


# ---------------- Function -----------------------
function F(x::Vector, mo::AbstractModel)
    return mo.F(x)
end

function Fs(x::Vector, mo::AbstractModel)
    throw(ErrorException("Fs not defined for Model"))
    return zeros(1)
end
function Fs!(x::Vector, mo::AbstractModel)
    throw(ErrorException("Fs not defined for Model"))
        
    
    return zeros(1)
end
# ------------------- gradient -----------------------
function grad!(x::Vector, mo::AbstractModel, stack::Vector)
    mo.grad!(x, stack)
end
function grad(x::Vector, mo::AbstractModel)
    stack = Array{Float64, 1}(undef, length(x))
    mo.grad!(x, stack)
end

function grads(x::Vector, mo::AbstractModel)
    throw(ErrorException("grads not defined for Model"))
    return nothing
end

function grads!(x::Vector, mo::AbstractModel, stack::Array{Vector, 1})
    throw(ErrorException("grads! not defined for Model"))
        
end

# ----------------- Hessian ---------------------------

function H!(x::Vector, mo::AbstractModel, stack::Matrix)
    return mo.H!(x, stack)
end

function Hdotv(x::Vector, mo::AbstractModel, v::Vector)
    return mo.Hdotv(x, v, stack)
end

function Hdotv!(x::Vector, mo::AbstractModel, v::Vector, stack::Vector)
    return mo.Hdotv!(x, v, stack)
end

# --------------------- BHHH -----------------------------
function BHHH!(x::Vector, mo::AbstractModel, stack::Matrix)
    throw(ErrorException("BHHH! not defined for Model"))
            
end

function BHHHdotv(x::Vector, mo::AbstractModel, v::Vector)
    throw(ErrorException("BHHHdot not defined for Model"))
        
    return zeros(1)
end
function BHHHdotv!(x::Vector, mo::AbstractModel, v::Vector, stack::Vector)
    throw(ErrorException("BHHHdot! not defined for Model"))
        
end
