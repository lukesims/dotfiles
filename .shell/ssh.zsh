# Don't open a GUI to ask for passwords
unset SSH_ASKPASS
unset SSH_ASKPASS_REQUIRE

# Load our keys into the keychain
eval $(keychain --quiet --noask --eval id_ed25519)
