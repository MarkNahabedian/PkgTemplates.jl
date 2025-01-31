insert!(LOAD_PATH, 1, joinpath(@__DIR__, ".."))

using {{{PKG}}}
using Documenter

DocMeta.setdocmeta!({{{PKG}}}, :DocTestSetup, :(using {{{PKG}}}); recursive=true)

makedocs(;
    modules=[{{{PKG}}}],
    authors="{{{AUTHORS}}}",
    sitename="{{{PKG}}}.jl",
    format=Documenter.HTML(;
{{#CANONICAL}}
        canonical="{{{CANONICAL}}}",
{{/CANONICAL}}
{{#EDIT_LINK}}
        edit_link={{{EDIT_LINK}}},
{{/EDIT_LINK}}
        assets={{^HAS_ASSETS}}String{{/HAS_ASSETS}}[{{^HAS_ASSETS}}],{{/HAS_ASSETS}}
{{#ASSETS}}
            "assets/{{{.}}}",
{{/ASSETS}}
{{#HAS_ASSETS}}
        ],
{{/HAS_ASSETS}}
    ),
    pages=[
        "Home" => "index.md",
    ],
{{#MAKEDOCS_KWARGS}}
    {{{first}}}={{{second}}},
{{/MAKEDOCS_KWARGS}}
)
{{#HAS_DEPLOY}}

deploydocs(;
    repo="{{{REPO}}}",
{{#BRANCH}}
    devbranch="{{{BRANCH}}}",
{{/BRANCH}}
)
{{/HAS_DEPLOY}}
