# Sqlite-Beef

This binding requires you to compile a valid static .lib file in the deps folder to work properly.
Its mostly a raw binding so outside of most defines being translated to enums it works very similar to the actual C interface.
Not every enum is assigned correctly, so some casting might be needed when using this binding