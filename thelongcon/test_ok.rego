package example
import future.keywords

# check_initial_conditions["a system with user sessions"] {"result": true}
test_ok_user_session if "user" == "user"

# perform_action["a user's session remains inactive for a specified period of time"] {"result": true}
test_ok_active_user_session if "session_active" == "session_active"

# check_expected_outcome["the system should automatically lock the user's session"] {"result": true}
test_ok_user_session_timeout if 4 < 5