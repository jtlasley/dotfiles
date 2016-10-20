#i3
##What's going on with this?
Right now i'm cleaning up an documenting my config!
## Magiking's basic guide to understanding all of these stupid color settings.
   - The `client.focused`: 
       - `border`: doesn't really show up with these settings. I see it when i am in tabbed mode
       - `background`: This is what I use as the color of the border of the active window
       - `text`: really don't see it
       - `indicator`: to show whether the next window oppened will tile horizontally or vertically.
         I don't like it so I set it to the same color as the pixel border
   - `client.unfocused`:
       - `border`: I like for this to be the same color as the terminal background 
       - `background`: this too
       - `indicator`: keep it the same color for blending! 
   - `client.focused-inactive`:
       - same as unfocused
   - `client.urgent`:
       - I want to switch this to the red color value of colorscheme
                       
```
                       border              background         text                 indicator            (for i3 w/regular things enabled)
                         |                     |                |                      |
                         V                     V                V                      V               (What this translates to for my setup)
                       more border         bordrer            text?                plese blend into my border
client.focused          $bg-color           $border-color      $text-color          $border-color  
client.unfocused        $inactive-bg-color  $inactive-bg-color $inactive-text-color $inactive-bg-color
client.focused_inactive $inactive-bg-color  $inactive-bg-color $inactive-text-color $inactive-bg-color
client.urgent           $urgent-bg-color    $urgent-bg-color   $text-color          $urgent-bg-color
```

