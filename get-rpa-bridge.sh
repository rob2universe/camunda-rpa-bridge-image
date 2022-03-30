curl -H "Authorization: Basic $(cat creds.txt | base64)" -LJO https://downloads.camunda.cloud/enterprise-release/camunda-bpm/rpa/1.1/1.1.5/camunda-bpm-rpa-bridge-1.1.5.zip
unzip camunda-bpm-rpa-bridge-1.1.5.zip -d rpa/
rm camunda-bpm-rpa-bridge-1.1.5.zip