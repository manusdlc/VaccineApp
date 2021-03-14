import javax.swing.plaf.nimbus.State;
import java.sql.*;
import java.util.Scanner;

public class VaccineApp {
    private static final Scanner in = new Scanner(System.in);
    private static int menuOption;

    private static String url = "jdbc:db2://winter2021-comp421.cs.mcgill.ca:50000/cs421";
    //private static final String url = "jdbc:db2://localhost:9000/cs421";
    private static final String usrID = "";
    private static final String password = "";

    private static Connection con;
    private static Statement s;
    private static int sqlCode = 0;
    private static String sqlState = "00000";

    private static boolean isExit() {
        return menuOption == 0;
    }

    private static void displayMenu() {
        System.out.println("\n" + "VaccineApp Main Menu");
        System.out.println("    0. Exit");
        System.out.println("    1. Add a new patient");
        System.out.println("    2. Assign a slot to a patient");
        System.out.println("    3. Enter vaccination information");
        System.out.print("Please select your option: ");
    }

    private static void addPatient() throws SQLException {
        System.out.print("    Health Insurance Number: ");
        String hInsurNum = "\'" + in.nextLine() + "\'";

        boolean isRecord = false;
        boolean insert = true;
        boolean update = false;
        try {
            ResultSet rs = s.executeQuery("SELECT hInsurNum FROM patient WHERE hInsurNum = " + hInsurNum);
            isRecord = rs.next();
        } catch (SQLException e) {
            sqlCode = e.getErrorCode();
            sqlState = e.getSQLState();

            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }

        if (isRecord) {
            insert = false;
            System.out.println("The patient with number " + hInsurNum + " is already registered." +
                    " Do you wish to update its personal information?");
            String isUpdate = in.nextLine();
            if (isUpdate.equals("Yes")) {
                update = true;
            } else {
                update = false;
            }
        }

        if (insert || update) {
            System.out.print("    Full name: ");
            String pname = "\'" + in.nextLine() + "\'";
            System.out.print("    Street address: ");
            String streetAddress = "\'" + in.nextLine() + "\'";
            System.out.print("    City: ");
            String city = "\'" + in.nextLine() + "\'";
            System.out.print("    Postal Code: ");
            String postalCode = "\'" + in.nextLine() + "\'";
            System.out.print("    Phone: ");
            String phone = "\'" + in.nextLine() + "\'";
            System.out.print("    Gender: ");
            String gender = "\'" + in.nextLine() + "\'";
            System.out.print("    Birth date: ");
            String birthDate = "\'" + in.nextLine() + "\'";
            System.out.print("    Registration date: ");
            String registrationDate = "\'" + in.nextLine() + "\'";
            System.out.print("    Category: ");
            String category = "\'" + in.nextLine() + "\'";

            String patientOperation = "";
            if (insert) {
                patientOperation += "INSERT INTO patient VALUES (" + hInsurNum + "," + pname + "," + streetAddress
                        + "," + city + "," + postalCode + "," + phone + "," + gender + "," + birthDate
                        + "," + registrationDate + "," + category + ")";
            } else if (update) {
                patientOperation += "UPDATE patient " +
                        "SET pname = " + pname + ", streetAddress = " + streetAddress + ", city = " + city
                        + ", postalCode = " + postalCode + ", phone = " + phone + ", gender = " + gender
                        + ", birthDate = " + birthDate + ", registrationDate = " + registrationDate
                        + ", category = " + category
                        + " WHERE hInsurNum = " + hInsurNum;
            }

            try {
                s.executeUpdate(patientOperation);
                System.out.println("DONE: " + pname + " was inserted/modified into the database");
            } catch (SQLException e) {
                sqlCode = e.getErrorCode();
                sqlState = e.getSQLState();

                System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
                System.out.println(e);
            }
        }
    }

    private static void assignSlot() {
        System.out.print("    Location: ");
        String location = "\'" + in.nextLine() + "\'";
        System.out.print("    Room number: ");
        String roomNum = in.nextLine();
        System.out.print("    Vaccination Day: ");
        String vaccDate = "\'" + in.nextLine() + "\'";
        System.out.print("    Time: ");
        String time = "\'" + in.nextLine() + "\'";

        //Check if the slot is free
        boolean insert = true;
        boolean update = false;
        boolean isFree = true;
        try {
            ResultSet rs = s.executeQuery("SELECT hInsurNum FROM slot WHERE location = " + location
            + " AND roomNum = " + roomNum + " AND vaccDate = " + vaccDate + " AND time = " + time);
            if (rs.next()) {
                insert = false;
                update = true;
                Object patient = rs.getObject("hInsurNum");
                if (patient != null) {
                    isFree = false;
                    System.out.println("This slot is has already been assigned to patient " + (String) patient);
                }
            }
        } catch (SQLException e) {
            sqlCode = e.getErrorCode();
            sqlState = e.getSQLState();

            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }

        if (isFree) {
            System.out.print("    Health Insurance Number: ");
            String hInsurNum = "\'" + in.nextLine() + "\'";

            //Check if patient has already received two doses
            int dosesReceived = 0;
            try {
                ResultSet rs = s.executeQuery("SELECT COUNT(*) FROM vial WHERE hInsurNum = " + hInsurNum);
                rs.next();
                dosesReceived = rs.getInt(1);
            } catch (SQLException e){
                sqlCode = e.getErrorCode();
                sqlState = e.getSQLState();

                System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
                System.out.println(e);
            }

            if (dosesReceived < 2) {
                System.out.print("    Assignment Date: ");
                String assignmentDate = "\'" + in.nextLine() + "\'";

                String assignSlot = "";
                if (insert) {
                    assignSlot += "INSERT INTO slot VALUES (" + location + ", " + roomNum + ", " + vaccDate
                            + ", " + time + ", " + hInsurNum + ", " + assignmentDate + ")";
                } else if (update) {
                    assignSlot += "UPDATE slot " +
                            "SET hInsurNum = " + hInsurNum + ", assignmentDate = " + assignmentDate
                            + " WHERE location = " + location + " AND roomNum = " + roomNum
                            + " AND vaccDate = " + vaccDate + " AND time = " + time;
                }

                try {
                    s.executeUpdate(assignSlot);
                    System.out.println("DONE: " + "," + location + "," + roomNum + "," + vaccDate
                            + "," + time + "," + " was assigned to " + "," + hInsurNum);
                } catch (SQLException e) {
                    sqlCode = e.getErrorCode();
                    sqlState = e.getSQLState();

                    System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
                    System.out.println(e);
                }
            } else System.out.println("Patient " + hInsurNum + " has already received the necessary doses");
        }
    }

    private static void enterVaccinationInformation() {
        System.out.println("Vaccine: ");
        String vaccine = "'" + in.nextLine() + "'";
        System.out.println("Batch number: ");
        String batchNum = in.nextLine();
        System.out.println("Vial number: ");
        String vialNum = in.nextLine();
        System.out.println("Health Insurance Number: ");
        String hInsurNum = "'" + in.nextLine() + "'";
        System.out.println("Canadian Nurse License Number: ");
        String caNurLicNum = "'" + in.nextLine() + "'";
        System.out.println("Location: ");
        String location = "'" + in.nextLine() + "'";
        System.out.println("Room number: ");
        String roomNum = in.nextLine();
        System.out.println("Vaccination date: ");
        String vaccDate = "'" + in.nextLine() + "'";
        System.out.println("Time: ");
        String time = "'" + in.nextLine() + "'";


        String enterVial = "INSERT INTO slot VALUES (" + vaccine + batchNum + vialNum + hInsurNum + caNurLicNum
                + location + roomNum + vaccDate + time + ")";

        try {
            s.executeUpdate(enterVial);
            System.out.println("DONE: " + "," + vaccine + " was administered to " + hInsurNum
                    + " at " + roomNum + "," + location + " on " + vaccDate + ", " + time);
        } catch (SQLException e) {
            sqlCode = e.getErrorCode();
            sqlState = e.getSQLState();

            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
    }

    public static void main(String[] args) throws SQLException {
        con = DriverManager.getConnection(url, usrID, password);
        s = con.createStatement();
        menuOption = -1;

        while (!isExit()) {
            displayMenu();
            menuOption = Integer.parseInt(in.nextLine());
            System.out.println();

            switch (menuOption) {
                case 1:
                    addPatient();
                    break;
                case 2:
                    assignSlot();
                    break;
                case 3:
                    enterVaccinationInformation();
                    break;
                default:
                    System.out.println("Exit...");
                    break;
            }
        }

        s.close();
        con.close();
    }
}