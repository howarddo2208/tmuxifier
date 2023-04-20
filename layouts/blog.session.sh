# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Developments/personal/blog"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "blog"; then

  new_window "blog"
  split_v 20
  run_cmd "hugo server"
  select_pane 0
  run_cmd "nvim ."


  new_window "theme"
  run_cmd "cd themes/dream && nvim ."
  
  # Select the default active window on session creation.
  select_window 0

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
