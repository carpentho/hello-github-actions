#!/usr/bin/env bats
@test "Should pass" {
result="$(INPUT_MY_NAME='Mona' ./action-a/entrypoint.sh)"
[ $? -eq 0 ]
}
@test "This test is a bug" {
result="$(INPUT_MY_NAME='aMona' ./action-a/entrypoint.sh)"
[ $? -eq 1 ]
}
