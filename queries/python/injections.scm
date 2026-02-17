; Highlight SQL in variables named "sql" or ending with "_sql"
(assignment
  left: (identifier) @_name
  (#lua-match? @_name "^sql$")
  right: (string
    (string_content) @injection.content)
  (#set! injection.language "sql"))

(assignment
  left: (identifier) @_name
  (#lua-match? @_name "_sql$")
  right: (string
    (string_content) @injection.content)
  (#set! injection.language "sql"))
