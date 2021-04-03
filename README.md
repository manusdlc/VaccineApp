# VaccineApp
Design of a database for managing a vaccination program and Java App for interacting with it.

## Design


ER Model:

![VaccineApp_ER-model](https://user-images.githubusercontent.com/59484319/113484930-3ede3300-94ab-11eb-8209-5b7adc4c6c8d.jpg)


Relational Model:

> batch(vaccine, batchNum, expiryDate, manufacDate, numVials, location)
>> 	vaccine foreign key ref vaccine(vname)
> 	location foreign key ref vaccLocation(lname)
> 
> category(cname, priority)
> 
> deputation(date, caNurLicNum, location)
>> 	caNurLicNum foreign key ref nurse
>> 	location foreign key ref vaccLocations(lname)
> 
> nurse(caNurLicNum, nname, employer)
>> 	employer foreign key ref hospital(lname)
> 
> patient(hInsurNum, pname, streetAddress, city, postalCode, phone, gender, birthDate, registrationDate, category) 
>> 	category foreign key ref category(cname)
> 
> slot(location, roomNum, vaccDate, time, hInsurNum, assignmentDate)
>> 	location foreign key ref vaccLocation(lname)
>> 	hInsurNum foreign key ref patient
> 
> vaccine(vname, doses, waitingPeriod)
> 
> vaccLocation(lname, streetAddress, city, postalCode)
> 
> hospital(lname)
>> 	lname foreign key ref vaccLocation
> 
> vial(vaccine, batchNum, vialNum, hInsurNum, caNurLicNum, location, roomNum, vaccDate, time)
>>  (vaccine, batchNum) foreign key ref batch\
>> 	hInsurNum foreign key ref patient\
>> 	caNurLicNum foreign key ref Nurses\
>> 	(location, roomNum, vaccDate, time) foreign key ref Slot
