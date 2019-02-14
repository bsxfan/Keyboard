# Keyboard.jl

This package provides a method with a small subset of the capabilities of the 
`keyboard` command in MATLAB. It can be used to display the values of local 
variables in a running Julia program.

It requires Julia 1.1.

Usage:
'''

using Keyboard
import Base.@locals


function somefunction(a,b)
    x = a + b
  
    # inspect local variables here
    keyboard(@locals,@__FILE__,@__LINE__)

    z = x + 2
    # ... and here
    keyboard(@locals,@__FILE__,@__LINE__)

end

'''

If things are working properly, you should see a message displaying the source file
and line number from where `keyboard` was invoked. You can type local variable names
at the prompt to have them displayed. 

When you want to continue running, just hit enter.
 