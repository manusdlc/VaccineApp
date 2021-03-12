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
        System.out.println("VaccineApp Main Menu");
        System.out.println("0. Exit");
        System.out.println("1. Add a Patient");
        System.out.println("2. Assign Slot to Patient");
        System.out.println("3. Enter vaccination information");
        System.out.println("Please select your option: ");
    }

    private static void addPatient() throws SQLException {
        System.out.print("    Health Insurance Number: ");
        String hInsurNum = "\'" + in.nextLine() + "\'";

        int numRecords = 0;
        boolean insert = true;
        boolean modify = false;
        try {
            ResultSet rs = s.executeQuery("SELECT COUNT(*) FROM patient WHERE hInsurNum = " + hInsurNum);
            rs.next();
            numRecords = rs.getInt(1);
        } catch (SQLException e) {
            sqlCode = e.getErrorCode();
            sqlState = e.getSQLState();

            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }

        if (numRecords > 0) {
            insert = false;
            System.out.println("The patient with number " + hInsurNum + " is already registered." +
                    " Do you wish to update its personal information?");
            String isUpdate = in.nextLine();
            if (isUpdate.equals("y")) {
                modify = true;
            } else {
                modify = false;
            }
        }

        if (insert || modify) {
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
            } else if (modify) {
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
        System.out.println("Location: ");
        String location = "'" + in.nextLine() + "', ";
        System.out.println("Room number: ");
        String roomNum = in.nextLine();
        System.out.println("Vaccination Day: ");
        String vaccDate = "'" + in.nextLine() + "', ";
        System.out.println("Time: ");
        String time = "'" + in.nextLine() + "', ";
        System.out.println("Health Insurance Number: ");
        String hInsurNum = "'" + in.nextLine() + "', ";
        System.out.println("Assignment Date: ");
        String assignmentDate = "'" + in.nextLine() + "'";

        String assignSlot = "INSERT INTO slot VALUES (" + location + roomNum + vaccDate
                + time + hInsurNum + assignmentDate + ")";

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
    }

    private static void enterVaccinationInformation() {
        System.out.println("Vaccine: ");
        String vaccine = "'" + in.nextLine() + "', ";
        System.out.println("Batch number: ");
        String batchNum = in.nextLine();
        System.out.println("Vial number: ");
        String vialNum = in.nextLine();
        System.out.println("Health Insurance Number: ");
        String hInsurNum = "'" + in.nextLine() + "', ";
        System.out.println("Canadian Nurse License Number: ");
        String caNurLicNum = "'" + in.nextLine() + "', ";
        System.out.println("Location: ");
        String location = "'" + in.nextLine() + "', ";
        System.out.println("Room number: ");
        String roomNum = in.nextLine();
        System.out.println("Vaccination date: ");
        String vaccDate = "'" + in.nextLine() + "', ";
        System.out.println("Time: ");
        String time = "'" + in.nextLine() + "', ";


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