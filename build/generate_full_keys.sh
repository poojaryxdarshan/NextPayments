echo "Generating certificates for use with CircleCI, press enter to continue"
read check1
 
openssl genrsa -des3 -passout pass:password324 -out server-full.pass.key 2048
openssl rsa -passin pass:password324 -in server-full.pass.key -out server-full.key
rm server-full.pass.key
 
echo "We will now generate the server key, when prompted for a password, press enter"
echo "press enter to continue"
read check2
 
openssl req -new -key server-full.key -out server-full.csr
 
echo "We will now generate the certificates, press enter to continue"
read check3
 
openssl x509 -req -sha256 -days 365 -in server-full.csr -signkey server-full.key -out server-full.crt
 
echo "The key will now be encoded in BASE64 and displayed, use the output for the value of SFDC_SERVER_KEY environment variable"
echo ""
echo "press enter to continue"
read check4

#certutil -encode server-full.key encodedkey.txt
base64 server-full.key
 
echo "We will now clean up, keys will be deleted"
echo "press enter to continue"
read check5
 
rm server-full.csr
rm server-full.key
 
echo "Certificate and key generation complete, please add server-full.crt to your OAuth connected app in Salesforce"