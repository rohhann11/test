# Define variables
TARGET_DIR="/home/ubuntu/GOCD"
WORKSPACE="/var/lib/go-agent/pipelines/IDFC-Pipeline"
 
# Ensure the file.sh script is executable
if [ ! -x "${WORKSPACE}/file.sh" ]; then
  echo "Making file.sh executable..."
  chmod +x "${WORKSPACE}/file.sh"
fi
 
# Create the target directory if it doesn't exist
echo "Creating directory: ${TARGET_DIR}"
mkdir -p "${TARGET_DIR}"
 
# Update ownership of the target directory
echo "Setting ownership of ${TARGET_DIR} to user 'go'"
sudo chown -R go:go "${TARGET_DIR}"
 
# Copy the JAR file to the target directory
echo "Copying HelloWorld.jar to ${TARGET_DIR}"
cp "${WORKSPACE}/HelloWorld.jar" "${TARGET_DIR}/"
 
# Set permissions on the JAR file
echo "Setting permissions on ${TARGET_DIR}/HelloWorld.jar"
chmod 755 "${TARGET_DIR}/HelloWorld.jar"
 
# Output success message
echo "JAR file has been file.sh to ${TARGET_DIR}"
