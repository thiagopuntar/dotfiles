
#!/bin/bash

selected_dir=$(find ~/projects ~/ ~/work ~/tripleten -mindepth 1 -maxdepth 1 -type d | fzf)


if [ -n "$selected_dir" ]; then
    nohup kitty --directory "$selected_dir" >/dev/null 2>&1 &
    sleep 0.05
else
    echo "No directory selected" 
fi

