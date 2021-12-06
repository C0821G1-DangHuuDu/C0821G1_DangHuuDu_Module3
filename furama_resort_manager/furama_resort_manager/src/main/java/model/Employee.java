package model;

public class Employee extends Person{
    private double salary;
    private String positionId;
    private String educationDegreeId;
    private String divisionId;
    private String username;


    public Employee() {
    }

    public Employee(String id, String name, String birthDay, String gender, String identityCard, String phoneNumber, String email, String address, double salary, String positionId, String educationDegreeId, String divisionId, String username) {
        super(id, name, birthDay, gender, identityCard, phoneNumber, email, address);
        this.salary = salary;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getPositionId() {
        return positionId;
    }

    public void setPositionId(String positionId) {
        this.positionId = positionId;
    }

    public String getEducationDegreeId() {
        return educationDegreeId;
    }

    public void setEducationDegreeId(String educationDegreeId) {
        this.educationDegreeId = educationDegreeId;
    }

    public String getDivisionId() {
        return divisionId;
    }

    public void setDivisionId(String divisionId) {
        this.divisionId = divisionId;
    }
}
