#!/usr/bin/env python3
"""
Post-process keymap-drawer SVGs to restore Twemoji colors.

keymap-drawer sets fill:white on key labels in dark mode. This inherited CSS
overrides SVG presentation attributes (fill="color") on Twemoji paths.
Inline styles (style="fill:color") have higher specificity than inherited CSS,
so converting presentation attributes to inline styles restores the colors.
"""

import re
import sys

def fix_emoji_colors(svg_path):
    with open(svg_path) as f:
        svg = f.read()

    # Find each twemoji glyph definition block: <svg id="twemoji:...">...</svg>
    # and convert fill/stroke presentation attributes to inline styles within it.
    def fix_glyph(match):
        block = match.group(0)

        def fix_attrs(tag_match):
            tag = tag_match.group(0)
            # Extract existing style attribute if any
            style_match = re.search(r'style="([^"]*)"', tag)
            existing_style = style_match.group(1) if style_match else ""

            extra = ""
            # Move fill presentation attribute to inline style
            fill_match = re.search(r'\sfill="([^"]+)"', tag)
            if fill_match and fill_match.group(1) != "none":
                fill_val = fill_match.group(1)
                tag = re.sub(r'\sfill="[^"]+"', "", tag)
                extra += f"fill:{fill_val};"

            # Move stroke presentation attribute to inline style
            stroke_match = re.search(r'\sstroke="([^"]+)"', tag)
            if stroke_match and stroke_match.group(1) != "none":
                stroke_val = stroke_match.group(1)
                tag = re.sub(r'\sstroke="[^"]+"', "", tag)
                extra += f"stroke:{stroke_val};"

            if not extra:
                return tag

            new_style = existing_style + extra
            if style_match:
                tag = re.sub(r'style="[^"]*"', f'style="{new_style}"', tag)
            else:
                tag = re.sub(r'(<\w+)', rf'\1 style="{new_style}"', tag, count=1)
            return tag

        # Apply to all SVG shape elements inside the glyph
        block = re.sub(r'<(?:path|circle|rect|polygon|ellipse|line|polyline)[^>]+>', fix_attrs, block)
        return block

    svg = re.sub(
        r'<svg\s+[^>]*id="twemoji:[^"]*"[^>]*>.*?</svg>',
        fix_glyph,
        svg,
        flags=re.DOTALL,
    )

    with open(svg_path, "w") as f:
        f.write(svg)

    print(f"Fixed emoji colors in {svg_path}")

for path in sys.argv[1:]:
    fix_emoji_colors(path)
