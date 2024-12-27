local ls = require("luasnip")

ls.add_snippets("go", {
    ls.parser.parse_snippet("iferr", "if err != nil {\n\treturn $1\n}"),
})
