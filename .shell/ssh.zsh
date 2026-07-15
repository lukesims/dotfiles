# Don't open a GUI to ask for passwords
unset SSH_ASKPASS
export SSH_ASKPASS_REQUIRE=never

# Load our keys into the keychain
eval $(keychain --quiet --noask --nogui --eval id_ed25519)
