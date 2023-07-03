### Date 

1. The current date/time is not a pure function
   (every time you create a Date instance, it has a different value-the current date/time)

2. Instead of letting the Use Case produce the current date via the impure Date.init()
   function directly, we can move this responsibility to a collaborator (a simple closure in this case)
   and inject it as a dependency. Then, we can easily control the current date/time during tests. 
