[doc (title="PML Reference Manual" authors="Christian Neumanns" date="2021-05-18")
    [ch (title="Introduction")
        [p This document describes all standard PML nodes. For each type of node, its tags and attributes are listed, and an example demonstrates how to use it.]
        [p If you have questions or suggestions then please send an email to contact {at} pml-lang {dot} dev. Thank you.]
    ]
    [ch (title="Block Nodes")
        [p A [i block] node represents a section that starts at a given line in the document and ends at a subsequent line.]
        [p For example, the [c chapter] node is a [i block] node. It starts at a given line of the document, and ends at a subsequent line.]
        [ch (title="Fundamental Nodes")
            [ch (title="Document" id="node_doc")

                [b Tag:] [c doc]

                [p [b Description]]
                [p Every PML document must start with a 'document' node. It is the root node of the document.]

                [p [b Attributes]]
                [list
                    [el title=Document Title (default attribute)
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A Blissful Experience</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Document Author(s)
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>authors</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A comma-separated list of authors.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>authors = Albert Einstein, Isaac Newton</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Publication Date
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>date</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The date the document has been published, in ISO format (yyyy-mm-dd).</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>local_date or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>date = 2018-12-01</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Source Code Syntax Highlighter
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>highlighter</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The name of the syntax highlighter used to highlight source code. Currently supported values are 'highlightjs', 'prism' and 'none'. Default is 'none', which means that source code highlighting is disabled.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>!PML_source_code_highlighter or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>highlighter = none</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Publication Time
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>time</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The time the document has been published, in ISO format (hh:mm).</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>local_time or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>time = 10:15</td></tr>
                            </table>
                        html]
                    ]
                    [el title=TOC Position
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>TOC_position</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The position of the table of contents ('left', 'top', or 'none').</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>!PML_TOC_position</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>left</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>TOC_position = top</td></tr>
                            </table>
                        html]
                    ]
                    [el title=TOC Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>TOC_title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The title of the table of contents.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>Table of Contents</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>TOC_title = Contents</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[doc title = A Nice Surprise \
    authors = Giovanni Spiridigliotsky \
    date = 2018-11-30

    blah blah blah
]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<article class="pml-doc-text">
    <div class="pml-doc-title-wrapper">
        <h1 class="pml-doc-title">A Nice Surprise</h1>
        <div class="pml-doc-authors">Giovanni Spiridigliotsky</div>
        <time class="pml-doc-date-time" datetime="2018-11-30">2018-11-30</time>
    </div>
    <p class="pml-paragraph">blah blah blah</p>
</article>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<article class="pml-doc-text">
    <div class="pml-doc-title-wrapper">
        <h1 class="pml-doc-title">A Nice Surprise</h1>
        <div class="pml-doc-authors">Giovanni Spiridigliotsky</div>
        <time class="pml-doc-date-time" datetime="2018-11-30">2018-11-30</time>
    </div>
    <p class="pml-paragraph">blah blah blah</p>
</article>

                        code]
                    ]
                ]
            ]
            [ch (title="Paragraph" id="node_p")

                [b Tag:] [c p]

                [p [b Description]]
                [p A paragraph is a set of one or more sentences. Note that it is not required to embed a paragraph within a node. Text not explicitly embedded in a node is automatically converted to a paragraph node. A double-new-line creates a paragraph break. All other whitespace is converted to a single space. Hence, two sentences separated by a single new-line will result in a single paragraph composed of two sentences.]

                [p [b Attributes]]
                [list
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
First sentence of first paragraph. Second sentence of first paragraph.

First sentence of second paragraph.
Second sentence of second paragraph.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

[p Third paragraph]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">First sentence of first paragraph. Second sentence of first paragraph.</p>
<p class="pml-paragraph">First sentence of second paragraph. Second sentence of second paragraph. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
<p class="pml-paragraph">Third paragraph</p>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-paragraph">First sentence of first paragraph. Second sentence of first paragraph.</p>
<p class="pml-paragraph">First sentence of second paragraph. Second sentence of second paragraph. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
<p class="pml-paragraph">Third paragraph</p>

                        code]
                    ]
                ]
            ]
            [ch (title="Chapter" id="node_ch")

                [b Tag:] [c ch]

                [p [b Description]]
                [p A chapter or sub-chapter of the document. A chapter can have any number of sub-chapters. Chapters can be nested to any level.]

                [p [b Attributes]]
                [list
                    [el title=Chapter Title (default attribute)
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = Fundamental Concepts</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[ch title = Introduction id = intro
    [ch title = What is This About?
        blah blah blah
    ]
    [ch title = Why is This Important?
        blah blah blah
    ]
]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<section id="intro" class="pml-chapter">
    <h2 class="pml-chapter-title">Introduction</h2>
    <section id="ch__1" class="pml-chapter">
        <h3 class="pml-chapter-title">What is This About?</h3>
        <p class="pml-paragraph">blah blah blah</p>
    </section>
    <section id="ch__2" class="pml-chapter">
        <h3 class="pml-chapter-title">Why is This Important?</h3>
        <p class="pml-paragraph">blah blah blah</p>
    </section>
</section>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<section id="intro" class="pml-chapter">
    <h2 class="pml-chapter-title">Introduction</h2>
    <section id="ch__1" class="pml-chapter">
        <h3 class="pml-chapter-title">What is This About?</h3>
        <p class="pml-paragraph">blah blah blah</p>
    </section>
    <section id="ch__2" class="pml-chapter">
        <h3 class="pml-chapter-title">Why is This Important?</h3>
        <p class="pml-paragraph">blah blah blah</p>
    </section>
</section>

                        code]
                    ]
                ]
            ]
        ]
        [ch (title="Common Nodes")
            [ch (title="List")
                [ch (title="List" id="node_list")

                    [b Tag:] [c list]

                    [p [b Description]]
                    [p A bulleted list of nodes.[nl]CSS can be used to change the item marker's appearance (e.g. use numbers). The CSS must be assigned to attribute 'html_style'. See examples.]

                    [p [b Attributes]]
                    [list
                        [el title=Node Identifier
                            [html
                                <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                    <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                    <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                                </table>
                            html]
                        ]
                        [el title=Node Title
                            [html
                                <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                    <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                                </table>
                            html]
                        ]
                    ]

                    [p [b HTML attributes]: allowed]

                    [p [b Example]]
                    [list
                        [el
                            [p PML code:]
                            [code
Standard list:
[list
    [el item 1]
    [el item 2]
]

Numbered list:
[list html_style="list-style-type:decimal"
    [el item 1]
    [el item 2]
]

No markers:
[list html_style="list-style-type:none"
    [el item 1]
    [el item 2]
]

Picture for marker
[list html_style="list-style-image: url('images/gold_star.png')"
    [el item 1]
    [el item 2]
]

Text for marker
[list html_style="list-style-type: '→ → '"
    [el item 1]
    [el item 2]
]

                            code]
                        ]
                        [el
                            [p Result:]
                            [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Standard list:</p>
<ul class="pml-list">
    <li class="pml-list-element">
        <p class="pml-paragraph">item 1</p>
    </li>
    <li class="pml-list-element">
        <p class="pml-paragraph">item 2</p>
    </li>
</ul>
<p class="pml-paragraph">Numbered list:</p>
<ul style="list-style-type:decimal" class="pml-list">
    <li class="pml-list-element">
        <p class="pml-paragraph">item 1</p>
    </li>
    <li class="pml-list-element">
        <p class="pml-paragraph">item 2</p>
    </li>
</ul>
<p class="pml-paragraph">No markers:</p>
<ul style="list-style-type:none" class="pml-list">
    <li class="pml-list-element">
        <p class="pml-paragraph">item 1</p>
    </li>
    <li class="pml-list-element">
        <p class="pml-paragraph">item 2</p>
    </li>
</ul>
<p class="pml-paragraph">Picture for marker</p>
<ul style="list-style-image: url('images/gold_star.png')" class="pml-list">
    <li class="pml-list-element">
        <p class="pml-paragraph">item 1</p>
    </li>
    <li class="pml-list-element">
        <p class="pml-paragraph">item 2</p>
    </li>
</ul>
<p class="pml-paragraph">Text for marker</p>
<ul style="list-style-type: '→ → '" class="pml-list">
    <li class="pml-list-element">
        <p class="pml-paragraph">item 1</p>
    </li>
    <li class="pml-list-element">
        <p class="pml-paragraph">item 2</p>
    </li>
</ul>

</div>
                            html]
                        ]
                        [el
                            [p HTML code generated:]
                            [code
<p class="pml-paragraph">Standard list:</p>
<ul class="pml-list">
    <li class="pml-list-element">
        <p class="pml-paragraph">item 1</p>
    </li>
    <li class="pml-list-element">
        <p class="pml-paragraph">item 2</p>
    </li>
</ul>
<p class="pml-paragraph">Numbered list:</p>
<ul style="list-style-type:decimal" class="pml-list">
    <li class="pml-list-element">
        <p class="pml-paragraph">item 1</p>
    </li>
    <li class="pml-list-element">
        <p class="pml-paragraph">item 2</p>
    </li>
</ul>
<p class="pml-paragraph">No markers:</p>
<ul style="list-style-type:none" class="pml-list">
    <li class="pml-list-element">
        <p class="pml-paragraph">item 1</p>
    </li>
    <li class="pml-list-element">
        <p class="pml-paragraph">item 2</p>
    </li>
</ul>
<p class="pml-paragraph">Picture for marker</p>
<ul style="list-style-image: url('images/gold_star.png')" class="pml-list">
    <li class="pml-list-element">
        <p class="pml-paragraph">item 1</p>
    </li>
    <li class="pml-list-element">
        <p class="pml-paragraph">item 2</p>
    </li>
</ul>
<p class="pml-paragraph">Text for marker</p>
<ul style="list-style-type: '→ → '" class="pml-list">
    <li class="pml-list-element">
        <p class="pml-paragraph">item 1</p>
    </li>
    <li class="pml-list-element">
        <p class="pml-paragraph">item 2</p>
    </li>
</ul>

                            code]
                        ]
                    ]
                ]
                [ch (title="List Element" id="node_el")

                    [b Tag:] [c el]

                    [p [b Description]]
                    [p An element of a list.]

                    [p [b Attributes]]
                    [list
                        [el title=Node Identifier
                            [html
                                <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                    <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                    <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                                </table>
                            html]
                        ]
                        [el title=Node Title
                            [html
                                <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                    <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                                </table>
                            html]
                        ]
                    ]

                    [p [b HTML attributes]: allowed]

                    [p [b Example]]
                    [list
                        [el
                            [p PML code:]
                            [code
[list title=Some planets
    [el title = Jupiter
        Jupiter is ...
    ]
    [el title = Uranus
        Uranus is ...
    ]
    [el title = Neptun
        Neptun is ...
    ]
]
                            code]
                        ]
                        [el
                            [p Result:]
                            [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-node-title">Some planets</p>
<ul class="pml-list">
    <li class="pml-list-element">
        <div class="pml-node-title">Jupiter</div>
        <p class="pml-paragraph">Jupiter is ...</p>
    </li>
    <li class="pml-list-element">
        <div class="pml-node-title">Uranus</div>
        <p class="pml-paragraph">Uranus is ...</p>
    </li>
    <li class="pml-list-element">
        <div class="pml-node-title">Neptun</div>
        <p class="pml-paragraph">Neptun is ...</p>
    </li>
</ul>

</div>
                            html]
                        ]
                        [el
                            [p HTML code generated:]
                            [code
<p class="pml-node-title">Some planets</p>
<ul class="pml-list">
    <li class="pml-list-element">
        <div class="pml-node-title">Jupiter</div>
        <p class="pml-paragraph">Jupiter is ...</p>
    </li>
    <li class="pml-list-element">
        <div class="pml-node-title">Uranus</div>
        <p class="pml-paragraph">Uranus is ...</p>
    </li>
    <li class="pml-list-element">
        <div class="pml-node-title">Neptun</div>
        <p class="pml-paragraph">Neptun is ...</p>
    </li>
</ul>

                            code]
                        ]
                    ]
                ]
            ]
            [ch (title="Table")
                [ch (title="Table Data" id="node_table_data")

                    [b Tag:] [c table_data]

                    [p [b Description]]
                    [p Simple table data defined as plain text, and rendered as a table.[nl]Each line of text represents a row.[nl]Cell values in a row are separated by a comma or a TAB character.[nl]The content of each cell can only be plain text. If formatted text or complex cell content (e.g. picture in a cell, or table in a table) is needed, then please use the 'table' tag.[nl]A header and footer can optionally be defined.[nl]The horizontal alignment (left, center, or right) can be specified for each column.[nl]The data will be rendered as a table.[nl]The following format rules apply:[nl]- Rows are separated by a line break. Empty lines are ignored.[nl]- Cells can be separated by a comma or a TAB character, but both separators cannot be mixed in a table.[nl]- Spaces before or after cell values are ignored.[nl]- If the second line is a dash (-) then the first line is a header.[nl]- If the second-last line is a dash (-) then the last line is a footer.[nl]]

                    [p [b Attributes]]
                    [list
                        [el title=Horizontal Alignments for Columns
                            [html
                                <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                    <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>halign</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>This optional parameter specifies the horizontal alignment for each column in a table.
                                    <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>
                                </table>
                            html]
                        ]
                        [el title=Node Identifier
                            [html
                                <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                    <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                    <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                                </table>
                            html]
                        ]
                        [el title=Node Title
                            [html
                                <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                    <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                                </table>
                            html]
                        ]
                    ]

                    [p [b HTML attributes]: allowed]

                    [p [b Example]]
                    [list
                        [el
                            [p PML code:]
                            [code
Simple table:

[table_data
    cell 1.1, cell 1.2
    cell 2.1, cell 2.2
table_data]

[table_data halign="C,L,R" title="Table with header, footer, and column alignments"
    Position, Product, Price
    -
    1, Organic food, 12.50
    2, Meditation lessons, 150.00
    -
    ,,Total: 162.50
table_data]

                            code]
                        ]
                        [el
                            [p Result:]
                            [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Simple table:</p>
<table class="pml-table">
    <tbody class="pml-table-body">
        <tr><td class="pml-table-body-cell">cell 1.1</td><td class="pml-table-body-cell">cell 1.2</td></tr>
        <tr><td class="pml-table-body-cell">cell 2.1</td><td class="pml-table-body-cell">cell 2.2</td></tr>
    </tbody>
</table>
<p class="pml-node-title">Table with header, footer, and column alignments</p>
<table class="pml-table">
    <thead class="pml-table-header">
        <tr><th class="pml-table-header-cell">Position</th><th class="pml-table-header-cell">Product</th><th class="pml-table-header-cell">Price</th></tr>
    </thead>
    <tbody class="pml-table-body">
        <tr><td class="pml-table-body-cell pml-text-align-center">1</td><td class="pml-table-body-cell pml-text-align-left">Organic food</td><td class="pml-table-body-cell pml-text-align-right">12.50</td></tr>
        <tr><td class="pml-table-body-cell pml-text-align-center">2</td><td class="pml-table-body-cell pml-text-align-left">Meditation lessons</td><td class="pml-table-body-cell pml-text-align-right">150.00</td></tr>
    </tbody>
    <tfoot class="pml-table-footer">
        <tr><td class="pml-table-footer-cell pml-text-align-center"></td><td class="pml-table-footer-cell pml-text-align-left"></td><td class="pml-table-footer-cell pml-text-align-right">Total: 162.50</td></tr>
    </tfoot>
</table>

</div>
                            html]
                        ]
                        [el
                            [p HTML code generated:]
                            [code
<p class="pml-paragraph">Simple table:</p>
<table class="pml-table">
    <tbody class="pml-table-body">
        <tr><td class="pml-table-body-cell">cell 1.1</td><td class="pml-table-body-cell">cell 1.2</td></tr>
        <tr><td class="pml-table-body-cell">cell 2.1</td><td class="pml-table-body-cell">cell 2.2</td></tr>
    </tbody>
</table>
<p class="pml-node-title">Table with header, footer, and column alignments</p>
<table class="pml-table">
    <thead class="pml-table-header">
        <tr><th class="pml-table-header-cell">Position</th><th class="pml-table-header-cell">Product</th><th class="pml-table-header-cell">Price</th></tr>
    </thead>
    <tbody class="pml-table-body">
        <tr><td class="pml-table-body-cell pml-text-align-center">1</td><td class="pml-table-body-cell pml-text-align-left">Organic food</td><td class="pml-table-body-cell pml-text-align-right">12.50</td></tr>
        <tr><td class="pml-table-body-cell pml-text-align-center">2</td><td class="pml-table-body-cell pml-text-align-left">Meditation lessons</td><td class="pml-table-body-cell pml-text-align-right">150.00</td></tr>
    </tbody>
    <tfoot class="pml-table-footer">
        <tr><td class="pml-table-footer-cell pml-text-align-center"></td><td class="pml-table-footer-cell pml-text-align-left"></td><td class="pml-table-footer-cell pml-text-align-right">Total: 162.50</td></tr>
    </tfoot>
</table>

                            code]
                        ]
                    ]
                ]
                [ch (title="Table" id="node_table")

                    [b Tag:] [c table]

                    [p [b Description]]
                    [p A table consisting of rows and columns.[nl]The content of each cell can be just plain text or any complex node, such as formatted text, a picture, a table (table in a table), etc.[nl]The table's structure is similar to a HTML table.[nl]HTML 'class' and 'style' attributes can be use to format the table with CSS.[nl]The table can optionally have a header and a footer.]

                    [p [b Attributes]]
                    [list
                        [el title=Node Caption
                            [html
                                <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                    <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>caption</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional caption (small text) associated with the node. The caption is typically displayed below the node.</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>caption = &quot;Better health through exercise!&quot;</td></tr>
                                </table>
                            html]
                        ]
                        [el title=Node Identifier
                            [html
                                <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                    <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                    <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                                </table>
                            html]
                        ]
                        [el title=Node Title
                            [html
                                <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                    <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                    <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                                </table>
                            html]
                        ]
                    ]

                    [p [b HTML attributes]: allowed]

                    [p [b Example]]
                    [list
                        [el
                            [p PML code:]
                            [code
Simple table:

[table
    [tr [tc C11] [tc C12]]
    [tr [tc C21] [tc C22]]
]

Table with header and footer:

[table
    [theader
        [tr [tc Pos.] [tc Group] [tc Total invoiced]]
    ]
    [tr [tc 1] [tc [i Organic] food] [tc html_style="text-align:right;" 12,000.22]]
    [tr [tc 2] [tc Meditation lessons] [tc html_style="text-align:right;" 21,350.00]]
    [tfooter
        [tr [tc] [tc html_style="text-align:right;" Sum:] [tc html_style="text-align:right;" 33,350.22]]
    ]
]
                            code]
                        ]
                        [el
                            [p Result:]
                            [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Simple table:</p>
<table class="pml-table">
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">C11</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">C12</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">C21</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">C22</p>
        </td>
    </tr>
</table>
<p class="pml-paragraph">Table with header and footer:</p>
<table class="pml-table">
    <thead class="pml-table-header">
        <tr class="pml-table-row">
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Pos.</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Group</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Total invoiced</p>
            </td>
        </tr>
    </thead>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph"><i class="pml-italic">Organic</i> food</p>
        </td>
        <td style="text-align:right;" class="pml-table-body-cell">
            <p class="pml-paragraph">12,000.22</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">Meditation lessons</p>
        </td>
        <td style="text-align:right;" class="pml-table-body-cell">
            <p class="pml-paragraph">21,350.00</p>
        </td>
    </tr>
    <tfoot class="pml-table-footer">
        <tr class="pml-table-row">
            <td class="pml-table-body-cell">
            </td>
            <td style="text-align:right;" class="pml-table-body-cell">
                <p class="pml-paragraph">Sum:</p>
            </td>
            <td style="text-align:right;" class="pml-table-body-cell">
                <p class="pml-paragraph">33,350.22</p>
            </td>
        </tr>
    </tfoot>
</table>

</div>
                            html]
                        ]
                        [el
                            [p HTML code generated:]
                            [code
<p class="pml-paragraph">Simple table:</p>
<table class="pml-table">
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">C11</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">C12</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">C21</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">C22</p>
        </td>
    </tr>
</table>
<p class="pml-paragraph">Table with header and footer:</p>
<table class="pml-table">
    <thead class="pml-table-header">
        <tr class="pml-table-row">
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Pos.</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Group</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Total invoiced</p>
            </td>
        </tr>
    </thead>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph"><i class="pml-italic">Organic</i> food</p>
        </td>
        <td style="text-align:right;" class="pml-table-body-cell">
            <p class="pml-paragraph">12,000.22</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">Meditation lessons</p>
        </td>
        <td style="text-align:right;" class="pml-table-body-cell">
            <p class="pml-paragraph">21,350.00</p>
        </td>
    </tr>
    <tfoot class="pml-table-footer">
        <tr class="pml-table-row">
            <td class="pml-table-body-cell">
            </td>
            <td style="text-align:right;" class="pml-table-body-cell">
                <p class="pml-paragraph">Sum:</p>
            </td>
            <td style="text-align:right;" class="pml-table-body-cell">
                <p class="pml-paragraph">33,350.22</p>
            </td>
        </tr>
    </tfoot>
</table>

                            code]
                        ]
                    ]
                ]
                [ch (title="Table Header" id="node_theader")

                    [b Tag:] [c theader]

                    [p [b Description]]
                    [p A header in a table.]

                    [p [b Attributes]]
                    [p This node doesn't have attributes.]

                    [p [b HTML attributes]: allowed]

                    [p [b Example]]
                    [list
                        [el
                            [p PML code:]
                            [code
Table with header:

[table
    [theader
        [tr [tc Header 1] [tc Header 2] [tc Header 3]]
    ]
    [tr [tc cell 1.1] [tc cell 1.2] [tc cell 1.3]]
    [tr [tc cell 2.1] [tc cell 2.2] [tc cell 2.3]]
]
                            code]
                        ]
                        [el
                            [p Result:]
                            [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Table with header:</p>
<table class="pml-table">
    <thead class="pml-table-header">
        <tr class="pml-table-row">
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Header 1</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Header 2</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Header 3</p>
            </td>
        </tr>
    </thead>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.3</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.3</p>
        </td>
    </tr>
</table>

</div>
                            html]
                        ]
                        [el
                            [p HTML code generated:]
                            [code
<p class="pml-paragraph">Table with header:</p>
<table class="pml-table">
    <thead class="pml-table-header">
        <tr class="pml-table-row">
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Header 1</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Header 2</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Header 3</p>
            </td>
        </tr>
    </thead>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.3</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.3</p>
        </td>
    </tr>
</table>

                            code]
                        ]
                    ]
                ]
                [ch (title="Table Footer" id="node_tfooter")

                    [b Tag:] [c tfooter]

                    [p [b Description]]
                    [p A footer in a table.]

                    [p [b Attributes]]
                    [p This node doesn't have attributes.]

                    [p [b HTML attributes]: allowed]

                    [p [b Example]]
                    [list
                        [el
                            [p PML code:]
                            [code
Table with footer:

[table
    [tr [tc cell 1.1] [tc cell 1.2] [tc cell 1.3]]
    [tr [tc cell 2.1] [tc cell 2.2] [tc cell 2.3]]
    [tfooter
        [tr [tc Footer 1] [tc Footer 2] [tc Footer 3]]
    ]
]
                            code]
                        ]
                        [el
                            [p Result:]
                            [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Table with footer:</p>
<table class="pml-table">
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.3</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.3</p>
        </td>
    </tr>
    <tfoot class="pml-table-footer">
        <tr class="pml-table-row">
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Footer 1</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Footer 2</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Footer 3</p>
            </td>
        </tr>
    </tfoot>
</table>

</div>
                            html]
                        ]
                        [el
                            [p HTML code generated:]
                            [code
<p class="pml-paragraph">Table with footer:</p>
<table class="pml-table">
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.3</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.3</p>
        </td>
    </tr>
    <tfoot class="pml-table-footer">
        <tr class="pml-table-row">
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Footer 1</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Footer 2</p>
            </td>
            <td class="pml-table-body-cell">
                <p class="pml-paragraph">Footer 3</p>
            </td>
        </tr>
    </tfoot>
</table>

                            code]
                        ]
                    ]
                ]
                [ch (title="Table Row" id="node_tr")

                    [b Tag:] [c tr]

                    [p [b Description]]
                    [p A row in a table.]

                    [p [b Attributes]]
                    [p This node doesn't have attributes.]

                    [p [b HTML attributes]: allowed]

                    [p [b Example]]
                    [list
                        [el
                            [p PML code:]
                            [code
Table with 2 rows:

[table
    [tr [tc cell 1.1] [tc cell 1.2] [tc cell 1.3]]
    [tr [tc cell 2.1] [tc cell 2.2] [tc row 2.3]]
]
                            code]
                        ]
                        [el
                            [p Result:]
                            [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Table with 2 rows:</p>
<table class="pml-table">
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.3</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">row 2.3</p>
        </td>
    </tr>
</table>

</div>
                            html]
                        ]
                        [el
                            [p HTML code generated:]
                            [code
<p class="pml-paragraph">Table with 2 rows:</p>
<table class="pml-table">
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.3</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">row 2.3</p>
        </td>
    </tr>
</table>

                            code]
                        ]
                    ]
                ]
                [ch (title="Table Cell" id="node_tc")

                    [b Tag:] [c tc]

                    [p [b Description]]
                    [p A cell in a table row.]

                    [p [b Attributes]]
                    [p This node doesn't have attributes.]

                    [p [b HTML attributes]: allowed]

                    [p [b Example]]
                    [list
                        [el
                            [p PML code:]
                            [code
Table with 2 rows and 3 columns:

[table
    [tr [tc cell 1.1] [tc cell 1.2] [tc cell 1.3]]
    [tr [tc cell 2.1] [tc cell 2.2] [tc cell 2.3]]
]
                            code]
                        ]
                        [el
                            [p Result:]
                            [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Table with 2 rows and 3 columns:</p>
<table class="pml-table">
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.3</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.3</p>
        </td>
    </tr>
</table>

</div>
                            html]
                        ]
                        [el
                            [p HTML code generated:]
                            [code
<p class="pml-paragraph">Table with 2 rows and 3 columns:</p>
<table class="pml-table">
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 1.3</p>
        </td>
    </tr>
    <tr class="pml-table-row">
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.1</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.2</p>
        </td>
        <td class="pml-table-body-cell">
            <p class="pml-paragraph">cell 2.3</p>
        </td>
    </tr>
</table>

                            code]
                        ]
                    ]
                ]
            ]
            [ch (title="Admonition" id="node_admon")

                [b Tag:] [c admon]

                [p [b Description]]
                [p A labeled piece of advice, such as a note, tip, warning, etc.]

                [p [b Attributes]]
                [list
                    [el title=Label
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>label</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The admonition's label, such as 'Note', 'Tip', 'Warning', etc.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>label = Warning</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[admon label=Note
    We will have a look at some [i striking] examples later in the book.
]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<div class="pml-admonition">
    <div class="pml-admonition-label">Note</div>
    <div class="pml-admonition-content">
        <p class="pml-paragraph">We will have a look at some <i class="pml-italic">striking</i> examples later in the book.</p>
    </div>
</div>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<div class="pml-admonition">
    <div class="pml-admonition-label">Note</div>
    <div class="pml-admonition-content">
        <p class="pml-paragraph">We will have a look at some <i class="pml-italic">striking</i> examples later in the book.</p>
    </div>
</div>

                        code]
                    ]
                ]
            ]
            [ch (title="Note" id="node_note")

                [b Tag:] [c note]

                [p [b Description]]
                [p A note is an admonition whose label is 'Note'.]

                [p [b Attributes]]
                [list
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[note Please remember that ...]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<div class="pml-admonition">
    <div class="pml-admonition-label">Note</div>
    <div class="pml-admonition-content">
        <p class="pml-paragraph">Please remember that ...</p>
    </div>
</div>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<div class="pml-admonition">
    <div class="pml-admonition-label">Note</div>
    <div class="pml-admonition-content">
        <p class="pml-paragraph">Please remember that ...</p>
    </div>
</div>

                        code]
                    ]
                ]
            ]
            [ch (title="Quote" id="node_quote")

                [b Tag:] [c quote]

                [p [b Description]]
                [p A piece of text said or written by somebody else.]

                [p [b Attributes]]
                [list
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Source of Quote
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>source</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The source of the quote, such as the name of a person, the title of an article, etc.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>source = Dalai Lama</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[quote source=Albert Einstein, physicist
    Everything should be as simple as possible, but not simpler.
]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<blockquote class="pml-quote">
    <div class="pml-quote-text-block">
        <div class="pml-quote-text-prefix"></div>
        <div class="pml-quote-text">
            <p class="pml-paragraph">Everything should be as simple as possible, but not simpler.</p>
        </div>
        <div class="pml-quote-text-suffix"></div>
    </div>
    <div class="pml-quote-source">Albert Einstein, physicist</div>
</blockquote>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<blockquote class="pml-quote">
    <div class="pml-quote-text-block">
        <div class="pml-quote-text-prefix"></div>
        <div class="pml-quote-text">
            <p class="pml-paragraph">Everything should be as simple as possible, but not simpler.</p>
        </div>
        <div class="pml-quote-text-suffix"></div>
    </div>
    <div class="pml-quote-source">Albert Einstein, physicist</div>
</blockquote>

                        code]
                    ]
                ]
            ]
            [ch (title="Caption" id="node_caption")

                [b Tag:] [c caption]

                [p [b Description]]
                [p A small title that is not part of he table of contents.]

                [p [b Attributes]]
                [p This node doesn't have attributes.]

                [p [b HTML attributes]: not allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[caption Figure 1: Clove Hitch Knot]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<div class="pml-caption">Figure 1: Clove Hitch Knot</div>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<div class="pml-caption">Figure 1: Clove Hitch Knot</div>

                        code]
                    ]
                ]
            ]
            [ch (title="Monospace" id="node_monospace")

                [b Tag:] [c monospace]

                [p [b Description]]
                [p A paragraph in which whitespace is preserved, and a fixed-width font is used. The text will be rendered exactly as written in the PML document.[nl]The following rules apply to the text in a 'monospace' block:[nl]- The width of each character (letter, digit, symbol) is the same.[nl]- All spaces and line-breaks in the text are preserved and rendered in the final document.[nl]Inline nodes can be used within a 'monospace' block. Hence standard character escape rules are applied.]

                [p [b Attributes]]
                [list
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[monospace title = "A Pascal Triangle"
      1
    1   1
  1   2   1
1   3   3   1
]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-node-title">A Pascal Triangle</p>
<pre class="pml-monospace">
      1
    1   1
  1   2   1
1   3   3   1
</pre>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-node-title">A Pascal Triangle</p>
<pre class="pml-monospace">
      1
    1   1
  1   2   1
1   3   3   1
</pre>

                        code]
                    ]
                ]
            ]
            [ch (title="Division" id="node_div")

                [b Tag:] [c div]

                [p [b Description]]
                [p A division or section in the document. This node is typically used to render a HTML <div>...</div> block with a specific set of HTML attributes.]

                [p [b Attributes]]
                [list
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[div html_class=syntax-block
    text text text
]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<div class="pml-division syntax-block">
    <p class="pml-paragraph">text text text</p>
</div>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<div class="pml-division syntax-block">
    <p class="pml-paragraph">text text text</p>
</div>

                        code]
                    ]
                ]
            ]
            [ch (title="HTML Code" id="node_html")

                [b Tag:] [c html]

                [p [b Description]]
                [p A node that contains HTML code. The HTML code is not processed in any way by the PML converter. It is passed as is to the resulting HTML document. This allows you to embed arbitrary HTML code in your final document.]

                [p [b Attributes]]
                [list
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: not allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[html
    <p>This is pure <b>HTML</b> code.</p>
html]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">

    <p>This is pure <b>HTML</b> code.</p>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code

    <p>This is pure <b>HTML</b> code.</p>

                        code]
                    ]
                ]
            ]
        ]
        [ch (title="Media")
            [ch (title="Image" id="node_image")

                [b Tag:] [c image]

                [p [b Description]]
                [p An image, such as a .jpg or .png file.[nl]Note about the HTML 'alt' tag:[nl]Attribute 'html_alt' can be used to add an explicit 'alt' attribute in the resulting HTML (see example).[nl]If no explicit 'html_alt' is provided then the value of the 'title' attribute is used for the 'alt' attribute.[nl]If no 'title' attribute is provided then the value of the 'caption' attribute is used.]

                [p [b Attributes]]
                [list
                    [el title=Image Source (default attribute)
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>source</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The relative file path to the image file. The path is relative to the target HTML file.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>relative_file_path</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>source = images/ball.png</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Horizontal Alignment
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>align</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The horizontal alignment of the picture. Valid values are: left, center, and right.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>!horizontal_alignment</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>left</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>align = center</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Border
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>border</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>This parameter can be set to 'yes' to draw a border around the image.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>yes_no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>border = yes</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Caption
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>caption</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional caption (small text) associated with the node. The caption is typically displayed below the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>caption = &quot;Better health through exercise!&quot;</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Image Height
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>height</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The height of the image, expressed in pixels.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>pos_32 or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>height = 150</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=URL link
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>link</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An URL link to the image. If the user clicks on the image, the browser will head to the specified URL.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>URL or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>link = http://www.example.com/path/image.png</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Image Width
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>width</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The width of the image, expressed in pixels.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>pos_32 or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>width = 200</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[image source = images/strawberries.jpg \
    title = Strawberries (Photo by Jacek Dylag on Unsplash) \
    link = https://unsplash.com/photos/kH3Sr9K8EBA \
    html_alt = Delicious strawberries]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<figure style="text-align: left">
    <p class="pml-node-title">Strawberries (Photo by Jacek Dylag on Unsplash)</p>
    <a href="https://unsplash.com/photos/kH3Sr9K8EBA">
        <img alt="Delicious strawberries" class="pml-image" src="images/strawberries.jpg" />
    </a>
</figure>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<figure style="text-align: left">
    <p class="pml-node-title">Strawberries (Photo by Jacek Dylag on Unsplash)</p>
    <a href="https://unsplash.com/photos/kH3Sr9K8EBA">
        <img alt="Delicious strawberries" class="pml-image" src="images/strawberries.jpg" />
    </a>
</figure>

                        code]
                    ]
                ]
            ]
            [ch (title="Audio (Sound)" id="node_audio")

                [b Tag:] [c audio]

                [p [b Description]]
                [p An audio stream (sound), such as an .mp3 or .wav file.]

                [p [b Attributes]]
                [list
                    [el title=Audio Source
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>source</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The relative file path to the audio file. The path is relative to the target HTML file.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>relative_file_path</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>source = audios/violin.mp3</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Caption
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>caption</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional caption (small text) associated with the node. The caption is typically displayed below the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>caption = &quot;Better health through exercise!&quot;</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[audio title="Bird talk" source=audios/bird_talk.mp3]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-node-title">Bird talk</p>
<audio class="pml-audio" controls="controls">
    <source src="audios/bird_talk.mp3">
    Your browser does not support the audio element.
</audio>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-node-title">Bird talk</p>
<audio class="pml-audio" controls="controls">
    <source src="audios/bird_talk.mp3">
    Your browser does not support the audio element.
</audio>

                        code]
                    ]
                ]
            ]
            [ch (title="Video" id="node_video")

                [b Tag:] [c video]

                [p [b Description]]
                [p A video, such as an .mp4 or .webm file.]

                [p [b Attributes]]
                [list
                    [el title=Video Source
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>source</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The relative file path to the video file. The path is relative to the target HTML file.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>relative_file_path</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>source = videos/happy_kids.mp4</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Caption
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>caption</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional caption (small text) associated with the node. The caption is typically displayed below the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>caption = &quot;Better health through exercise!&quot;</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Video Height
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>height</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The height of the video, expressed in pixels.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>pos_32 or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>height = 400</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Video Width
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>width</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The width of the video, expressed in pixels.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>pos_32 or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>width = 600</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[video source = videos/red_flower.mp4 title = Beautiful Nature]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-node-title">Beautiful Nature</p>
<video controls="controls" class="pml-video">
    <source src="videos/red_flower.mp4">
    Your browser does not support the video element.
</video>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-node-title">Beautiful Nature</p>
<video controls="controls" class="pml-video">
    <source src="videos/red_flower.mp4">
    Your browser does not support the video element.
</video>

                        code]
                    ]
                ]
            ]
            [ch (title="Embedded Youtube Video" id="node_youtube_video")

                [b Tag:] [c youtube_video]

                [p [b Description]]
                [p A Youtube video embedded in the document.]

                [p [b Attributes]]
                [list
                    [el title=Youtube Video Id
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>yid</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The identifier of the Youtube video. This identifier is displayed in the video's URL on Youtube. Example: If the URL of the Youtube video is https://www.youtube.com/watch?v=NUDhA4hXdS8 then the identifier is NUDhA4hXdS8.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>yid = NUDhA4hXdS8</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Caption
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>caption</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional caption (small text) associated with the node. The caption is typically displayed below the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>caption = &quot;Better health through exercise!&quot;</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Video Height
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>height</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The height of the video, expressed in pixels.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>pos_32 or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>height = 400</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Video Width
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>width</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The width of the video, expressed in pixels.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>pos_32 or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>width = 600</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[youtube_video yid = qrcZqnICYbs \
    title = Hellzapoppin 1941 - Enjoy! \
    width = 600 \
    height = 400]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-node-title">Hellzapoppin 1941 - Enjoy!</p>
<div>
    <iframe width="600" height="400" src="https://www.youtube.com/embed/qrcZqnICYbs" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="pml-youtube-video"></iframe>
</div>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-node-title">Hellzapoppin 1941 - Enjoy!</p>
<div>
    <iframe width="600" height="400" src="https://www.youtube.com/embed/qrcZqnICYbs" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="pml-youtube-video"></iframe>
</div>

                        code]
                    ]
                ]
            ]
        ]
        [ch (title="Software Development ")
            [ch (title="Source Code" id="node_code")

                [b Tag:] [c code]

                [p [b Description]]
                [p A block of source code.]

                [p [b Attributes]]
                [list
                    [el title=Use Source Code Syntax Highlighter
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>highlight</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>Specifies whether the source code should be highlighted or not.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>yes_no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>highlight = no</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Language
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>lang</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The name of the language used in the source code. This value is used primarily for syntax highlighting. Specify 'auto' to request automatic language detection (works only if this feature is supported by the highlighter). Specify 'text' for simple plain text (without highlighting). To get the list of supported languages please consult the documentation of the syntax highlighter used. Some frequently used values are: c, css, java, javascript, html.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>auto</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>lang = java</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [html
<pre class="pml-code">
[code
    i = 0;
    j = 1;
code]
</pre>
                        html]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<pre class="pml-code"><code>i = 0;
j = 1;</code></pre>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<pre class="pml-code"><code>i = 0;
j = 1;</code></pre>

                        code]
                    ]
                ]
            ]
            [ch (title="Insert Source Code" id="node_insert_code")

                [b Tag:] [c insert_code]

                [p [b Description]]
                [p Insert source code stored in an external file.]

                [p [b Attributes]]
                [list
                    [el title=File
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>file</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>Absolute or relative path to the source code file. In case of a relative path, it is relative to the working directory at the time of running the PML converter.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>absolute_or_relative_file_path</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>file = code_examples/hello.ppl</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Insert From Regex
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>from_regex</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>If this parameter is not defined (set to null by default) then the source code inserted into the document starts at the beginning of the file content. A regular expression can be assigned to this parameter. In that case the source code inserted into the document starts at the first match of the regular expression in the source code file.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>regex or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>from_regex = &quot;function foo ( name string )&quot;
                            </table>
                        html]
                    ]
                    [el title=Use Source Code Syntax Highlighter
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>highlight</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>Specifies whether the source code should be highlighted or not.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>yes_no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>highlight = no</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Include From Regex
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>include_from_regex</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>Please refer to the description of parameter 'from_regex' for an explanation of this parameter</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>yes_no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>from_regex = &quot;// start insert.*\r?\n&quot; include_from_regex = no</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Include To Regex
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>include_to_regex</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>Please refer to the description of parameter 'to_regex' for an explanation of this parameter</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>yes_no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>yes</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>to_regex = &quot;// end insert&quot; include_to_regex = no</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Language
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>lang</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The name of the language used in the source code. This value is used primarily for syntax highlighting. Specify 'auto' to request automatic language detection (works only if this feature is supported by the highlighter). Specify 'text' for simple plain text (without highlighting). To get the list of supported languages please consult the documentation of the syntax highlighter used. Some frequently used values are: c, css, java, javascript, html.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>auto</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>lang = java</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Insert To Regex
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>to_regex</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>If this parameter is not defined (set to null by default) then the source code inserted into the document ends at the end of the file content. A regular expression can be assigned to this parameter. In that case the source code inserted into the document ends at the first match of the regular expression in the source code file. If parameter 'from_regex' is also defined, then the search for this regex starts after the match of 'from_regex'.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>regex or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>to_regex = &quot;\}\r?\n&quot;
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[insert_code file=resources/ref_manual/resources/source_code/hello_world.ppl]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<pre class="pml-code"><code>// Hello world program written in PPL
// www.ppl-lang.dev

function start
    OS.out.write_line ( &quot;Hello world&quot; )
.
</code></pre>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<pre class="pml-code"><code>// Hello world program written in PPL
// www.ppl-lang.dev

function start
    OS.out.write_line ( &quot;Hello world&quot; )
.
</code></pre>

                        code]
                    ]
                ]
            ]
            [ch (title="Input" id="node_input")

                [b Tag:] [c input]

                [p [b Description]]
                [p Any input provided to a software application, such as a command typed in a terminal, text contained in a config file, etc.]

                [p [b Attributes]]
                [list
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[input
    pmlc create_reference_manual -output_directory path/to/dir
input]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<pre class="pml-input">pmlc create_reference_manual -output_directory path/to/dir</pre>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<pre class="pml-input">pmlc create_reference_manual -output_directory path/to/dir</pre>

                        code]
                    ]
                ]
            ]
            [ch (title="Output" id="node_output")

                [b Tag:] [c output]

                [p [b Description]]
                [p Any output created by a software application, such as a result written to the OS's standard output device.]

                [p [b Attributes]]
                [list
                    [el title=Node Identifier
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>id</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>A unique identifier for the node. The id can be used for cross-referencing, or for local links in the resulting HTML code.
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>id = basic_concept</td></tr>
                            </table>
                        html]
                    ]
                    [el title=Node Title
                        [html
                            <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                                <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>title</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>An optional small title, typically displayed above the node.</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                                <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>title = A beautiful idea</td></tr>
                            </table>
                        html]
                    ]
                ]

                [p [b HTML attributes]: allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[output
    Congratulations!
    The new database has been created successfully.
output]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<pre class="pml-output">Congratulations!
The new database has been created successfully.</pre>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<pre class="pml-output">Congratulations!
The new database has been created successfully.</pre>

                        code]
                    ]
                ]
            ]
        ]
    ]
    [ch (title="Inline Nodes")
        [p An [i inline] node represents a part of a paragraph (a block of text). It starts at some character position in the paragraph, and ends at a subsequent position.]
        [p For example, the [c italic] node is an [i inline] node. All text contained in it is written in [i italics].]
        [ch (title="Font")
            [ch (title="Bold Text" id="node_b")

                [b Tag:] [c b]

                [p [b Attributes]]
                [p This node doesn't have attributes.]

                [p [b HTML attributes]: not allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
This is a [b huge] advantage.
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">This is a <b class="pml-bold">huge</b> advantage.</p>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-paragraph">This is a <b class="pml-bold">huge</b> advantage.</p>

                        code]
                    ]
                ]
            ]
            [ch (title="Italic Text" id="node_i")

                [b Tag:] [c i]

                [p [b Attributes]]
                [p This node doesn't have attributes.]

                [p [b HTML attributes]: not allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
We want [i simplicity].

This is a [b [i very] important] point.
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">We want <i class="pml-italic">simplicity</i>.</p>
<p class="pml-paragraph">This is a <b class="pml-bold"><i class="pml-italic">very</i> important</b> point.</p>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-paragraph">We want <i class="pml-italic">simplicity</i>.</p>
<p class="pml-paragraph">This is a <b class="pml-bold"><i class="pml-italic">very</i> important</b> point.</p>

                        code]
                    ]
                ]
            ]
            [ch (title="Subscript Text" id="node_sub")

                [b Tag:] [c sub]

                [p [b Description]]
                [p Subscript text is rendered in a smaller font below the normal text line.]

                [p [b Attributes]]
                [p This node doesn't have attributes.]

                [p [b HTML attributes]: not allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
Water: H[sub 2]O
This is [sub subscript], and this is [sup superscript]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Water: H<sub class="pml-subscript">2</sub>O This is <sub class="pml-subscript">subscript</sub>, and this is <sup class="pml-superscript">superscript</sup></p>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-paragraph">Water: H<sub class="pml-subscript">2</sub>O This is <sub class="pml-subscript">subscript</sub>, and this is <sup class="pml-superscript">superscript</sup></p>

                        code]
                    ]
                ]
            ]
            [ch (title="Superscript Text" id="node_sup")

                [b Tag:] [c sup]

                [p [b Description]]
                [p Superscript text is rendered in a smaller font above the normal text line.]

                [p [b Attributes]]
                [p This node doesn't have attributes.]

                [p [b HTML attributes]: not allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
2[sup 4] = 16
This is [sup superscript], and this is [sub subscript]
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">2<sup class="pml-superscript">4</sup> = 16 This is <sup class="pml-superscript">superscript</sup>, and this is <sub class="pml-subscript">subscript</sub></p>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-paragraph">2<sup class="pml-superscript">4</sup> = 16 This is <sup class="pml-superscript">superscript</sup>, and this is <sub class="pml-subscript">subscript</sub></p>

                        code]
                    ]
                ]
            ]
            [ch (title="Strikethrough Text" id="node_strike")

                [b Tag:] [c strike]

                [p [b Description]]
                [p Strikethrough text is rendered with a line through it.]

                [p [b Attributes]]
                [p This node doesn't have attributes.]

                [p [b HTML attributes]: not allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
[strike Only 50 tickets left]

SOLD OUT!
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph"><s class="pml-strikethrough">Only 50 tickets left</s></p>
<p class="pml-paragraph">SOLD OUT!</p>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-paragraph"><s class="pml-strikethrough">Only 50 tickets left</s></p>
<p class="pml-paragraph">SOLD OUT!</p>

                        code]
                    ]
                ]
            ]
            [ch (title="Inline Source Code" id="node_c")

                [b Tag:] [c c]

                [p [b Description]]
                [p Source code embedded within text.]

                [p [b Attributes]]
                [p This node doesn't have attributes.]

                [p [b HTML attributes]: not allowed]

                [p [b Example]]
                [list
                    [el
                        [p PML code:]
                        [code
The assignment [c pi = 3.1415] means we are using [i four] decimals for [c pi].
                        code]
                    ]
                    [el
                        [p Result:]
                        [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">The assignment <code class="pml-inline-code">pi = 3.1415</code> means we are using <i class="pml-italic">four</i> decimals for <code class="pml-inline-code">pi</code>.</p>

</div>
                        html]
                    ]
                    [el
                        [p HTML code generated:]
                        [code
<p class="pml-paragraph">The assignment <code class="pml-inline-code">pi = 3.1415</code> means we are using <i class="pml-italic">four</i> decimals for <code class="pml-inline-code">pi</code>.</p>

                        code]
                    ]
                ]
            ]
        ]
        [ch (title="URL Link" id="node_link")

            [b Tag:] [c link]

            [p [b Description]]
            [p A URL link to a resource, such as a website or a file to download.]

            [p [b Attributes]]
            [list
                [el title=URL
                    [html
                        <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                            <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>url</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The Uniform Resource Locator (URL) of the link.</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>URL</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>url = https://www.ppl-lang.dev</td></tr>
                        </table>
                    html]
                ]
                [el title=URL text
                    [html
                        <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                            <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>text</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The text to be displayed instead of the URL. If no text is specified then the URL itself is displayed.</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>text = our website</td></tr>
                        </table>
                    html]
                ]
            ]

            [p [b HTML attributes]: allowed]

            [p [b Example]]
            [list
                [el
                    [p PML code:]
                    [code
Please have a look at [link url=http://www.example.com/articles/123 text=this article] for more information.
                    code]
                ]
                [el
                    [p Result:]
                    [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Please have a look at <a href="http://www.example.com/articles/123" class="pml-link">this article</a> for more information.</p>

</div>
                    html]
                ]
                [el
                    [p HTML code generated:]
                    [code
<p class="pml-paragraph">Please have a look at <a href="http://www.example.com/articles/123" class="pml-link">this article</a> for more information.</p>

                    code]
                ]
            ]
        ]
        [ch (title="Verbatim Text" id="node_verbatim")

            [b Tag:] [c verbatim]

            [p [b Attributes]]
            [p This node doesn't have attributes.]

            [p [b HTML attributes]: not allowed]

            [p [b Example]]
            [list
                [el
                    [p PML code:]
                    [code
Math's ring operator is [verbatim &#x2218;].
                    code]
                ]
                [el
                    [p Result:]
                    [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Math's ring operator is &#x2218;.</p>

</div>
                    html]
                ]
                [el
                    [p HTML code generated:]
                    [code
<p class="pml-paragraph">Math's ring operator is &#x2218;.</p>

                    code]
                ]
            ]
        ]
        [ch (title="Cross-Reference" id="node_xref")

            [b Tag:] [c xref]

            [p [b Description]]
            [p A cross-reference (link) to another node in the same document.]

            [p [b Attributes]]
            [list
                [el title=Node Id
                    [html
                        <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                            <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>node_id</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The identifier of the target node that is referenced.</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>node_id = chapter_1</td></tr>
                        </table>
                    html]
                ]
                [el title=Text
                    [html
                        <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                            <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>text</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>The text to be displayed for the cross-reference. If this attribute is omitted, then the title of the target node is displayed. If the target node doesn't have a title, then the target node's identifier is displayed instead.</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>string or null</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>no</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Default value:</td><td>null</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>text = Hello World example</td></tr>
                        </table>
                    html]
                ]
            ]

            [p [b HTML attributes]: allowed]

            [p [b Example]]
            [list
                [el
                    [p PML code:]
                    [code
[ch title=A Beautiful Solution id=solution
    text text text
]

[ch title = Conclusion
    As we saw in chapter [xref node_id=solution], it is ...
]
                    code]
                ]
                [el
                    [p Result:]
                    [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<section id="solution" class="pml-chapter">
    <h2 class="pml-chapter-title">A Beautiful Solution</h2>
    <p class="pml-paragraph">text text text</p>
</section>
<section id="ch__1" class="pml-chapter">
    <h2 class="pml-chapter-title">Conclusion</h2>
    <p class="pml-paragraph">As we saw in chapter <a href="#solution" class="pml-xref">A Beautiful Solution</a>, it is ...</p>
</section>

</div>
                    html]
                ]
                [el
                    [p HTML code generated:]
                    [code
<section id="solution" class="pml-chapter">
    <h2 class="pml-chapter-title">A Beautiful Solution</h2>
    <p class="pml-paragraph">text text text</p>
</section>
<section id="ch__1" class="pml-chapter">
    <h2 class="pml-chapter-title">Conclusion</h2>
    <p class="pml-paragraph">As we saw in chapter <a href="#solution" class="pml-xref">A Beautiful Solution</a>, it is ...</p>
</section>

                    code]
                ]
            ]
        ]
        [ch (title="Span" id="node_span")

            [b Tag:] [c span]

            [p [b Description]]
            [p This inline node is typically used to render a HTML <span>...</span> inline element with a specific set of HTML attributes.]

            [p [b Attributes]]
            [p This node doesn't have attributes.]

            [p [b HTML attributes]: allowed]

            [p [b Example]]
            [list
                [el
                    [p PML code:]
                    [code
This is a [span html_style="color:red;background-color:yellow" huge] advantage.
                    code]
                ]
                [el
                    [p Result:]
                    [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">This is a <span  style="color:red;background-color:yellow" class="pml-span">huge</span> advantage.</p>

</div>
                    html]
                ]
                [el
                    [p HTML code generated:]
                    [code
<p class="pml-paragraph">This is a <span  style="color:red;background-color:yellow" class="pml-span">huge</span> advantage.</p>

                    code]
                ]
            ]
        ]
        [ch (title="New Line" id="node_nl")

            [b Tag:] [c nl]

            [p [b Description]]
            [p An explicit new line (line break) inserted in the document.]

            [p [b Attributes]]
            [p This node doesn't have attributes.]

            [p [b HTML attributes]: not allowed]

            [p [b Example]]
            [list
                [el
                    [p PML code:]
                    [code
Line 1[nl][nl]Line 2
                    code]
                ]
                [el
                    [p Result:]
                    [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">Line 1<br /><br />Line 2</p>

</div>
                    html]
                ]
                [el
                    [p HTML code generated:]
                    [code
<p class="pml-paragraph">Line 1<br /><br />Line 2</p>

                    code]
                ]
            ]
        ]
        [ch (title="Space Character" id="node_sp")

            [b Tag:] [c sp]

            [p [b Description]]
            [p An explicit space character inserted in the document. Whitespace composed of several characters (such as two spaces) is always converted into a single space (as in HTML). Hence, this node can be used to explicitly insert two or more spaces.]

            [p [b Attributes]]
            [p This node doesn't have attributes.]

            [p [b HTML attributes]: not allowed]

            [p [b Example]]
            [list
                [el
                    [p PML code:]
                    [code
This is  g  o  o  d !  [- 2 spaces will result in ONE space -]

This is [sp]g[sp][sp]o[sp][sp]o[sp][sp]d[sp]!
                    code]
                ]
                [el
                    [p Result:]
                    [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">This is g o o d !</p>
<p class="pml-paragraph">This is &nbsp;g&nbsp;&nbsp;o&nbsp;&nbsp;o&nbsp;&nbsp;d&nbsp;!</p>

</div>
                    html]
                ]
                [el
                    [p HTML code generated:]
                    [code
<p class="pml-paragraph">This is g o o d !</p>
<p class="pml-paragraph">This is &nbsp;g&nbsp;&nbsp;o&nbsp;&nbsp;o&nbsp;&nbsp;d&nbsp;!</p>

                    code]
                ]
            ]
        ]
    ]
    [ch (title="Text Processing Nodes")
        [ch (title="Comment")
            [p A comment starts with [c \[-] and ends with [c -\]]. Comments can appear anywhere and they can be nested to any level. Text within comments is ignored.]

            [p [b Example]]
            [list
                [el
                    [p PML code:]
                    [code
This is [- good -] awesome.
[- TODO: explain why -]

Text
[-
    This [i bad] text not show.
    [- a
        nested
        comment -]
-]

More text
                    code]
                ]
                [el
                    [p Result:]
                    [html
<div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
<p class="pml-paragraph">This is  awesome.</p>
<p class="pml-paragraph">Text</p>
<p class="pml-paragraph">More text</p>

</div>
                    html]
                ]
                [el
                    [p HTML code generated:]
                    [code
<p class="pml-paragraph">This is  awesome.</p>
<p class="pml-paragraph">Text</p>
<p class="pml-paragraph">More text</p>

                    code]
                ]
            ]
        ]
        [ch (title="Insert File" id="node_insert")

            [b Tag:] [c insert]

            [p [b Description]]
            [p Insert a .pml file in the current document. The text contained in the file is inserted at the position of the 'insert' node. This is useful to split a big document into several files (e.g. each chapter is contained in a different file), or to re-use text snippets that appear in several documents.]

            [p [b Attributes]]
            [list
                [el title=File
                    [html
                        <table border=0 cellspacing=0 cellpadding=3 style="margin-bottom:1em;">
                            <tr><td style="text-align: right; vertical-align: top;">Id:</td><td>file</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Description:</td><td>Absolute or relative path to the file to be inserted. In case of a relative path, it is relative to the directory of the PML file in which the [c insert] is defined.</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Type:</td><td>absolute_or_relative_file_path</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Required:</td><td>yes</td></tr>
                            <tr><td style="text-align: right; vertical-align: top;">Example:</td><td>file = chapters/conclusion.pml</td></tr>
                        </table>
                    html]
                ]
            ]

            [p [b HTML attributes]: not allowed]

            [p [b Example]]
            [code
[doc title=A Strange Trip
    [insert file=chapters/introduction.pml]
    [insert file=chapters/story.pml]
    [insert file=chapters/conclusion.pml]
]
            code]
        ]
        [ch (title="Constant Parameter" id="node_const")

            [b Tag:] [c const]

            [p [b Description]]
            [p A constant parameter is used to define text snippets that are re-used several times in the document. A constant parameter is composed of an identifier (name) and a value. The value assigned to the constant can be re-used in the document by simply specifying the constant's identifier between << and >>.]

            [p [b Attributes]]
            [p This node doesn't have attributes.]

            [p [b HTML attributes]: not allowed]

            [p [b Example]]
            [code
[const examples_root = http://www.example.com/project/source_code/examples]

Here are two examples:

[link url=<<examples_root>>/ex1.html text=example 1]

[link url=<<examples_root>>/ex2.html text=example 2].
            code]
        ]
    ]
]