# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Developments/opensource"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "opensource"; then

  # Create a new window inline within session layout definition.
  new_window "affine"
  run_cmd "cd AFFiNE && nvim ."
  split_v 20
  run_cmd "cd AFFiNE"
  select_pane 0

  new_window "logseq"
  run_cmd "cd logseq && nvim ."
  split_v 20
  run_cmd "cd logseq"
  select_pane 0
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
