(*
RULES FOR EXPRESSIONS

- criteria that can be used for all languages

WHAT ARE THE...
1. SYNTAX RULES
  - Checks if the syntax is valid
  - What would cause the expression to throw syntax error

2. TYPE-CHECKING RULES
  - what types are valid for sub-expressions - look up in the static env.
  - what are the types of the return values for each expression
  - what would cause an expression to fail type checking - throw type error

3. EVALUATION RULES
  - how does it perform computation
  - how does it produce a value
  - what would cause an expression to fail at runtime - throw runtime error
  - what would cause an infinite loop

*)


(* 
VARIABLES

- SYNTAX:
  - sequence of letters and digit
  - first character cannot be digit

- TYPE-CHECKING:
  - when used in an expression, look up in the current static environment
    - if not there, type error

- EVALUATION:
  - at this point the program has already type checked
  - look up variable in dynamic environment
  - run expression

 *)

val varName = 12;

varName + 1;

(* 
ADDITION
e1 + e2

- SYNTAX
  - e1 and e2 are both expressions separated by + operator

- TYPE-CHECKING
  - e1 and e2 must be integers

- EVALUATION
  - v1 and v2 are determined and added
*)

(* 
CONDITIONAL EXPRESSION

Given this expression
if e1 then e2 else e3;

Syntax:
  - if, then, and else are keywords
  - e1, e2, and e3 are sub-expressions

Type-checking
  - e1 must evaluate to type bool
  - e2 and e3 must evaluate to the same type
  - we say they both have type t
  - the type of the entire conditional expression is of type t

Evaluation Rules
  - 1st evaluate e1 to a value (v1)
  - if v1 is true, evaluate e2 & e2 becames result of whole expression
  - if v1 is false, ealuate e3 & e3 becomes result of the whole expression
 *)

(* 
Given this expression
val graterThan = e1 < e2;

Evaluate Syntax, Type-checking, and evaluation

Syntax
- e1 and e2 separated by < symbol

Type-Checking
- e1 & e2 must be type int
- whole expression returns a bool
- greaterThan is of type bool

Evaluation
- if e1 is less than e2, expression results in true
- otherwise expression will result in false
*)

