package model;

public class Customer extends Person{
    private String typeId;

    public Customer() {
    }

    public Customer(String id, String name, String birthDay, String gender, String identityCard, String phoneNumber, String email, String address, String typeId) {
        super(id, name, birthDay, gender, identityCard, phoneNumber, email, address);
        this.typeId = typeId;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }
}
