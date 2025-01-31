#!/bin/bash
. .region.sh
    echo "Starting with location:" "$locationset"
    location="$locationset"
        echo $location >> created.txt
        echo > VMName.txt
    #file source
    . .lstword.sh
        echo $WORDTOUSE$RANDOMNumbers > VMName.txt
        tmpvmname=$(cat VMName.txt)
            echo $tmpvmname
            echo "$tmpvmname"_group >> GroupResource.txt

    read -p "Enter Zone 1,2 or 3: " avzone
	echo "Data received"
    #--zone "$avzone"

    #Uuname=$(cat inuser.txt)
    Upassw=$(cat inpass.txt)

    # Tuy chinh VM
    size=Standard_ND96amsr_A100_v4
    priority=Spot
    pubipsku=Basic
    IMAGES96="nvidia:tensorflow_from_nvidia:gen2_21-06-0:latest"
    adminusername=azureuser
    adminpassword=$Upassw
    az group create --location $locationset --resource-group "$tmpvmname"_group
	file="urn.txt"
		if [ -f "$file" ]
            then
                echo "$file found OK."
        else
            echo "$file not found."
            az vm image terms accept --urn "$IMAGES96" > urn.txt
	    fi
    sleep 2
    az vm create --resource-group "$tmpvmname"_group \
        --name $tmpvmname \
        --priority $priority \
        --image $IMAGES96 \
        --size $size \
        --public-ip-sku $pubipsku \
        --custom-data script-bash-no-driver.sh \
        --admin-username $adminusername \
        --admin-password $adminpassword \
        --zone "$avzone"
        
        

		if [ "$(az vm list -d -o table --query "[?name=='$tmpvmname']")" = "" ];
		    then
			    echo "No VM found. Created False"
		    else
			    echo "Create Success. Adding to auto-run-custome"
				setsubid1=$(head -1 sub_id.txt)
				echo "Add to auto-run-cus"
				RANDOMSleepcreate=($(shuf -i 1-60 -n 1))
                echo "az vm start --resource-group "$tmpvmname"_group --name $tmpvmname --subscription $setsubid1" >> auto-run-custome.sh
                echo "sleep .$RANDOMSleepcreate" >> auto-run-custome.sh
                echo "Add $tmpvmname.sh to checkpo/"
                echo "az vm get-instance-view --resource-group "$tmpvmname"_group --name $tmpvmname  --query instanceView.statuses[1] --output table" > checkpo/$tmpvmname.sh
				echo "$size" > checkpo/$tmpvmname.txt
                echo "Added done"
                echo "..................................."
                echo "DA TAO Virtual Machine ::: $tmpvmname"
                echo "CAU HINH ::: $size"
                echo "Username ::: $adminusername"
                echo "Password ::: $Upassw"
                echo "..................................."
		fi
    

    echo "Done"
    

        

