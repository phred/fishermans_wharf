function new_plugin
    set -l plugin_name $argv[1]
    set -l plugin_path $WHARF_PATH/$plugin_name
    echo "Making new plugin in "(set_color red)$plugin_path
    for f in $plugin_path/conf.d $plugin_path/completions $plugin_path/functions
        mkdir -p $f
        touch $f/$plugin_name.fish
        echo $f
    end
    _new_plugin_conf $plugin_name >$plugin_path/conf.d/$plugin_name.fish
    _new_plugin_readme $plugin_name >$plugin_path/README.md
    echo $plugin_name >$plugin_path/fisher-plugin
end
