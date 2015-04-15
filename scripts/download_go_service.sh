#!/bin/bash
set -e

# Check for a minimum arg count
if [ $# -ge 2 ]
then
    APP=$1
    SHA=$2
else
    echo "Must specify app and sha"
    exit 1
fi

# Get the target options
ARCH=${ARCH:-"amd64"}
OS=${OS:-"linux"}

# S3 configuration
BUCKET="hc-ops"
ACCESS_KEY="AKIAIQKKRR4MIJXPU6TA"
SECRET_KEY="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"

# Install options
DEST=${DEST:-"/usr/local/bin/"}

# Generate the config
cat <<EOF > .s3config
[default]
access_key = ${ACCESS_KEY}
secret_key = ${SECRET_KEY}
EOF

# Get the local path
LOCAL_PATH=${DEST}${APP}_${SHA}

# Attempt to upload
s3cmd -f -c .s3config get s3://${BUCKET}/pkg/${APP}/${SHA}/${OS}_${ARCH}/${APP} ${LOCAL_PATH}

# Remove the config
rm .s3config

# Set the permissions
chmod 755 ${LOCAL_PATH}

# Create a link to the file
ln -fs ${LOCAL_PATH} ${DEST}${APP}
