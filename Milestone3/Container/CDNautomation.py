import os
import json
with open("cdnauto.json") as f:
	js=f.read()
data=json.loads(js)
print("Please let us know if you are patient enough to give the inputs through CLI or else populate the json file. 1.CLI 2.json file")
CLIorjson=input()
if(CLIorjson=="1"):
        print("Do you want to implement CDN architecture in this topology? 1.Yes 2.No")
        CDNresponse=input()
        if(CDNresponse=="1"):
                print("Thank you for choosing CDN service! We hope that you like it!!")
                os.system("sudo bash opposite.sh") 
                print("Do you want to implement Data hierarchy functionality? 1.Yes 2.No")
                CDNdatahierarchy=input()
                if(CDNdatahierarchy=="1"):
                        os.system("sudo bash CDNsend.sh")
                print("Do you want to implement our new node replication feature in your setup??? 1.Yes 2.No")
                CDNdatarep=input()
                if(CDNdatarep=="1"):
                        print("Cool! The architecture would now scale as per the demands!! Sit back and relax!!")  
                print("Do you need Accounting functionality? 1.Yes 2.No")
                Acc=input()
                if(Acc=="yes"):
                        print("You can find all the log statistics in CN node under log folder!")             
        else:
                print("Alas! Hope to see you next time!")
else:
        if(data["cdnauto"]=="yes"):
                print("Thank you for choosing CDN service! We hope that you like it!!")
                os.system("sudo bash opposite.sh")
        if(data["data hierarchy"]=="yes"):
                os.system("sudo bash CDNsend.sh")
        if(data["delivery node replication"]=="yes"):
                print("Cool! The architecture would now scale as per the demands!! Sit back and relax!!") 
        if(data["accounting"]=="yes"):
                print("You can find all the log statistics in CN node under log folder!") 
