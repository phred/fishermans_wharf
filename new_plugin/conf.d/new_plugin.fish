function _new_plugin_install --on-event new_plugin_install
    # Set universal variables, create bindings, and other initialization logic.
end

function _new_plugin_update --on-event new_plugin_update
  # Migrate resources, print warnings, and other update logic.
end

function _new_plugin_uninstall --on-event new_plugin_uninstall
    # Erase 'private' functions, variables, bindings, and other uninstall logic.
end

