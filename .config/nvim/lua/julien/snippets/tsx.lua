local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
	s("od", {
		t("const { "),
		i(0, "field"),
		t(" } = "),
		-- Placeholder with initial text.
		i(1, "variable"),
		t(";"),
	}),
}
