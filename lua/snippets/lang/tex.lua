local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt
local i = ls.insert_node
local t = ls.text_node
local s = ls.snippet
local rep = require("luasnip.extras").rep

local opts = {
	delimiters = "()",
	strict = true,
}

ls.add_snippets("tex", {
	s("frac", fmt("\frac{()}{()}", { i(1), i(2) }, opts)),
	s("im", fmt("\\( {} \\)", i(1))),
	s("dm", fmt([[ \[ {1} \] ]], i(1))),
	s(
		"image",
		fmt(
			[[
\begin{figure}[H]
  \centering
  \includegraphics[scale=(1)]{(2)}
\end{figure}
  ]],
			{ i(1), i(2) },
			opts
		)
	),
	s(
		"boilerplate",
		fmt(
			[[ 
\documentclass[a4paper]{article}

\usepackage{
	amsfonts,
	amsmath,
	amssymb,
	tcolorbox,
	geometry,
	enumitem,
	tikz,
	siunitx,
	float,
	tabularx,
	cancel,
	fancyhdr
}


\date{}
\setlength{\parindent}{0pt}
\geometry{margin=2cm}
\title{\bf (1)}
\author{(2)}
\newcommand{\boxconclusion}[1]{
	\begin{tcolorbox}[colback=blue!5!white,colframe=blue!25!black,title=Conclusion]
		#1
	\end{tcolorbox}
}

\newcolumntype{R}[1]{ >{\raggedright\arraybackslash}m{#1} }
\newcolumntype{C}[1]{ >{\centering\arraybackslash}m{#1} }
\newcolumntype{L}[1]{ >{\raggedleft\arraybackslash}m{#1} }

\newcommand{\lrp}[1]{
	\left(( #1 \right))
}

% header
\fancyhf{}
\pagestyle{fancy}
\renewcommand{\footrulewidth}{0.4pt}
\cfoot{\thepage}
\lhead{}
\rhead{(3)}

\begin{document}
(4)
\end{document}
  ]],
			{ i(1), i(2), rep(1), i(3) },
			opts
		)
	),
})
