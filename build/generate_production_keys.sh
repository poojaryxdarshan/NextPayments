echo "Generating certificates for use with CircleCI, press enter to continue"
read check1
 
openssl genrsa -des3 -passout pass:password324 -out server-production.pass.key 2048
openssl rsa -passin pass:password324 -in server-production.pass.key -out server-production.key
rm server-production.pass.key
 
echo "We will now generate the server key, when prompted for a password, press enter"
echo "press enter to continue"
read check2
 
openssl req -new -key server-production.key -out server-production.csr
 
echo "We will now generate the certificates, press enter to continue"
read check3
 
openssl x509 -req -sha256 -days 365 -in server-production.csr -signkey server-production.key -out server-production.crt
 
echo "The key will now be encoded in BASE64 and displayed, use the output for the value of SFDC_SERVER_KEY environment variable"
echo ""
echo "press enter to continue"
read check4

#certutil -encode server-production.key encodedkey.txt
base64 server-production.key
 
echo "We will now clean up, keys will be deleted"
echo "press enter to continue"
read check5
 
rm server-production.csr
rm server-production.key
 
echo "Certificate and key generation complete, please add server-production.crt to your OAuth connected app in Salesforce"