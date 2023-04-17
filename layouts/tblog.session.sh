# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Developments/school/techblog-mern"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "tblog"; then

  # Create a new window inline within session layout definition.
  new_window "frontend"
  split_v 20
  run_cmd "cd tblog-mern-fe && yarn start"
  select_pane 0
  run_cmd "cd tblog-mern-fe && vv"


  new_window "backend"
  split_v 20
  run_cmd "cd tblog-express-be && yarn dev"
  select_pane 0
  run_cmd "cd tblog-express-be && vv"
  
  # Select the default active window on session creation.
  select_window 0

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
