# Keyboard.jl

This package provides a method with a small subset of the capabilities of the 
`keyboard` command in MATLAB. It can be used to display the values of local 
variables in a running Julia program.

It requires Julia 1.1.

Usage:
```
using Revise          # recommended, helps to be able to run updated code without restarting REPL
using Keyboard        # this package
import Base.@locals   # required --- available since Julia 1.1


function somefunction(a,b)
    x = a + b
  
    # inspect local variables here
    keyboard(@locals,@__FILE__,@__LINE__)

    z = x + 2
    # ... and here
    keyboard(@locals,@__FILE__,@__LINE__)

end
```


If things are working properly, you should see a message displaying the source file
and line number from where `keyboard` was invoked. You can type local variable names
at the prompt to have them displayed. 

When you want to continue running, just hit enter.

# Can we do this as a macro?

I tried to create a macro with the same capability. The idea was that `@locals`,
`@__FILE__` and `@__LINE__` could be invoked from inside the macro definition, so that
the keyboard functionality could be invoked with the shorther macro call:
```
    @keyboard
```
But I can't manage to get the right syntax to call these macros from my keybaord macro. 
If you know how to do this, please help ...

