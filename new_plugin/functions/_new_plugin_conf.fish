function _new_plugin_conf
    set -l plugin_name $argv[1]
    echo "\
function _"$plugin_name"_install --on-event "$plugin_name"_install
    # Set universal variables, create bindings, and other initialization logic.
end

function _"$plugin_name"_update --on-event "$plugin_name"_update
  # Migrate resources, print warnings, and other update logic.
end

function _"$plugin_name"_uninstall --on-event "$plugin_name"_uninstall
    # Erase 'private' functions, variables, bindings, and other uninstall logic.
end
"
end
