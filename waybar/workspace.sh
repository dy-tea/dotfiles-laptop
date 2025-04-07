#!/bin/bash
awmsg -c -1 w l | while IFS= read -r line; do
	active_workspace=$(echo "$line" | jq '.active')
	if [ "$active_workspace" != "null" ]; then
		echo "{\"text\": \"$active_workspace\", \"class\": \"awm_workspace\", \"tooltip\": \"Active Workspace: $active_workspace\"}"
	fi
done

