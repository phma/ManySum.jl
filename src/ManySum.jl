module ManySum
export pairwiseSum!

function pairwiseSum!(a::Array{T})::T where T<:AbstractFloat
  i=1
  n=length(a)
  while i<n
    for j=1:2*i:n-i
      a[j]+=a[j+i]
    end
    i*=2
  end
  if n>0
    a[1]
  else
    0
  end
end

greet() = print("Hello World!")

end # module
