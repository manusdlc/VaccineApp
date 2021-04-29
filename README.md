# VaccineApp
Design of a database for managing a vaccination program and Java App for interacting with it.

## Design


### ER Model

![VaccineApp_ER-model](https://user-images.githubusercontent.com/59484319/113494594-f98d2600-94e9-11eb-82de-4b872e9b30af.jpg)


### Relational Model

* batch(vaccine, batchNum, expiryDate, manufacDate, numVials, location)
  - vaccine foreign key ref vaccine(vname)
  - location foreign key ref vaccLocation(lname)

* category(cname, priority)
 
* deputation(date, caNurLicNum, location)
  - caNurLicNum foreign key ref nurse
  - location foreign key ref vaccLocations(lname)

* nurse(caNurLicNum, nname, employer)
  - employer foreign key ref hospital(lname)

* patient(hInsurNum, pname, streetAddress, city, postalCode, phone, gender, birthDate, registrationDate, category) 
  - category foreign key ref category(cname)

* slot(location, roomNum, vaccDate, time, hInsurNum, assignmentDate)
  - location foreign key ref vaccLocation(lname)
  - hInsurNum foreign key ref patient

* vaccine(vname, doses, waitingPeriod)

* vaccLocation(lname, streetAddress, city, postalCode)

* hospital(lname)
  - lname foreign key ref vaccLocation

* vial(vaccine, batchNum, vialNum, hInsurNum, caNurLicNum, location, roomNum, vaccDate, time)
  - (vaccine, batchNum) foreign key ref batch
  - hInsurNum foreign key ref patient
  - caNurLicNum foreign key ref Nurses
  - (location, roomNum, vaccDate, time) foreign key ref Slot


## Java App

* Add new patient
  - If the patient already is in the database, ask the user if he wants to update the patient's personal information.
 
* Assign slot
  - Verify that the slot is available.
  - Verify that the necessary waiting period has elapsed in case the patient has received a dose previously.
  - Check if the patient has already received all necessary doses.

* Administer dose
  - Check if the vaccine getting administered is the same as the vaccine in previous administered doses, if any.

## Interaction Demo

### Adding a patient
![adding_patient](https://user-images.githubusercontent.com/59484319/116590758-6bf0fa80-a91e-11eb-8857-6440f4132e5e.png)


### Updating a patient
![updating_patient](https://user-images.githubusercontent.com/59484319/116590942-980c7b80-a91e-11eb-85ee-58bfcd586c4b.png)

### Assigning a slot
![assigning_slot](https://user-images.githubusercontent.com/59484319/116590969-a195e380-a91e-11eb-9635-8d790e9bb711.png)

### Assigning an occupied slot
![slot_already_assigned](https://user-images.githubusercontent.com/59484319/116591043-b3778680-a91e-11eb-8173-268ac5b110db.png)

### Administering a dose
![administering_dose](https://user-images.githubusercontent.com/59484319/116591126-c8ecb080-a91e-11eb-9073-63b4edadfe8e.png)

### Administering an extra dose
![number_of_doses](https://user-images.githubusercontent.com/59484319/116591204-db66ea00-a91e-11eb-92e4-fafaaaa43d1a.png)

### Administering a different vaccine
![different_vaccine](https://user-images.githubusercontent.com/59484319/116591317-f5083180-a91e-11eb-8cdb-d23549abb588.png)

### Data query & plot
![chart](https://user-images.githubusercontent.com/59484319/116591860-9d1dfa80-a91f-11eb-8207-33b0a6b7a2e5.png)




