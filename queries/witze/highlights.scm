; generic identifiers, everywhere
(identifier) @variable

; "id" as a key is a special literal token, not an identifier
(definition key: "id" @keyword)

; ordinary keys — reaches _primitive_definition's field via definition
(definition key: (identifier) @property)

; localisation keys
(localisation_definition localisation_key: (identifier) @property)

; logical operators
(logical_operator) @keyword.operator

; literals
(string) @string
(integer) @number
(decimal) @number
(boolean) @boolean

; localisation strings, with interpolation styled distinctly
(localisation_string) @string
(interpolation
  "$" @punctuation.special
  (identifier) @variable
  "$" @punctuation.special)

; namespace.id references, e.g. tutmod.1
(id namespace: (identifier) @module)
(id id_number: (id_number) @number)

; the l_english declaration
(language_identifier) @module

(comment) @comment

; punctuation & operators
"=" @operator
["{" "}"] @punctuation.bracket
"." @punctuation.delimiter
":" @punctuation.delimiter

