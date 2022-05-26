#!/usr/bin/env bash
for u in $(dscl . list /Users | grep -Ev "^_|nobody|root|daemon"); do
    echo "dseditgroup -o edit -n /Local/Default -u $ADMIN_USER -P $ADMIN_PASSWORD -a $u -t user lpadmin"
    dseditgroup -o edit -n /Local/Default -u "$ADMIN_USER" -P "$ADMIN_PASSWORD" -a "$u" -t user lpadmin
done
