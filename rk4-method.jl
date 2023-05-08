f(x,y) = 3x-6y

x_0=0
y_0=2

h=0.001

target = 0.5

x_n = x_0
y_n = y_0

for n in x_0:h:target-h
    println("y_$n = $(round(y_n; digits=4))")

    k_1 = f(x_n,y_n)
    k_2 = f(x_n+(1/2)*h,y_n+(1/2)h*k_1)
    k_3 = f(x_n+(1/2)*h,y_n+(1/2)*h*k_2)
    k_4 = f(x_n+h,y_n+h*k_3)

    global y_n = y_n + (h/6)*(k_1+2*k_2+2*k_3+k_4)
    global x_n = x_n + h
end

println("y_$target = $(round(y_n; digits=4))")