## Coffee-script Notes
**Author : [Ridev](anuragridev@gmail.com)**

> Note: This document assumes that you know little bit of programming.Very basic fundamental rules are not explained.

Use following command to install `cofffee-script`

```
npm install coffee-script
```
**Note:** Use of `--save` argument in the command auto saves the package in `package.json` as `dependencies


**Summary**
- Its the language, which compiles as `Javascript`
- The golden rule of CoffeeScript is: **"It's just JavaScript"**
- The code compiles one-to-one into the equivalent JS, and there is no interpretation at runtime.
- You can use any existing JavaScript library seamlessly from CoffeeScript (and vice-versa).
- All syntaxes are same as `java-script`.
- The difference is that its fully indentation based language
- Declaration of variable and function are same

  ```
  //- Declaration of variable
  connect = require 'connect'

  //- Declaration of function
  connect = () ->
  ```

- Variable declaration as follows

  ```
  JSON

    math = <-- JSON variable
      root:   Math.sqrt <-- variable
      square: square <-- variable
      cube:   (x) -> x * square x <-- declaration of function for assignment

      song = ["do", "re", "mi", "fa", "so"]

    singers = {Jagger: "Rock", Elvis: "Roll"}

  Array
    bitlist = [
      1, 0, 1
      0, 0, 1
      1, 1, 0
    ]
    -- same as --
    bitlist = [1, 0, 1, 0, 0, 1, 1, 1, 0]

  Nested JSON
    kids =
      brother:
        name: "Max"
        age:  11
      sister:
        name: "Ida"
        age:  9
  ```

**Functions**
- Functions are defined by an optional list of parameters in parentheses, an arrow, and the function body. The empty function looks like this:  `->`
```
square = (x) -> x * x
cube   = (x) -> square(x) * x
```
- Functions may also have default values for arguments, which will be used if the incoming argument is missing (null or undefined).

  ```
  fill = (container, liquid = "coffee") ->
  "Filling the #{container} with #{liquid}..."
  -- Here is parameter liquid is null then default value is set as "Coffee"
  ```
  ** Variables**
  - When each property is listed on its own line, the commas are optional.
  - Objects may be created using indentation instead of explicit braces, similar to YAML.

  - In JavaScript, you can't use reserved words, like class, as properties of an object, without quoting them as strings. CoffeeScript notices reserved words used as keys in objects and quotes them for you, so you don't have to worry about it (say, when using jQuery).

  ```
  $('.account').attr class: 'active'

  log object.class

  syntax auto interpret class based on previous keyword
  ```

- Cofffee-script auto takes care of your variable scopes based on indentations.
```
outer = 1
changeNumbers = ->
  inner = -1
  outer = 10
inner = changeNumbers()
```

**Splats**
- Splats are function parammeters, where function take *n* number of arguments and arguments varies based on conditions.

```
awardMedals = (first, second, others...) ->
  gold   = first
  silver = second
  rest   = others
```
**Loops**
```
# Eat lunch.
eat food for food in ['toast', 'cheese', 'wine']

# Fine five course dining.
courses = ['greens', 'caviar', 'truffles', 'roast', 'cake']
menu i + 1, dish for dish, i in courses

# Health conscious meal.
foods = ['broccoli', 'spinach', 'chocolate']
eat food for food in foods when food isnt 'chocolate'

-- for each loop
countdown = (num for num in [10..1])
```

> Coffee-Scrip and JavaScript Operators comparision


| CoffeeScript	| JavaScript
|:--:|:--:
|is	| ===
| isnt |	!==
| not	| !
| and	| &&
| or	| **2 pipes**
| true, yes, on	| true
| false, no, off	| false
| @, this	| this
| of	| in
| in	| **-no JS equivalent-**
| a ** b	| Math.pow(a, b)
| a // b	| Math.floor(a / b)
| a %% b	| (a % b + b) % b
