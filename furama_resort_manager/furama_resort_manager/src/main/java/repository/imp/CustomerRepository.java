package repository.imp;

import model.Customer;
import repository.ICustomerRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    @Override
    public List<Customer> loadListCustomer() {
        List<Customer> customerList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("select * from khach_hang");
            ResultSet resultSet = preparedStatement.executeQuery();

            Customer customer = null;
            while (resultSet.next()){
                customer = new Customer();
                customer.setId(resultSet.getString("ma_khach_hang"));
                customer.setName(resultSet.getString("ho_ten"));
                customer.setBirthDay(resultSet.getString("ngay_sinh"));
                customer.setGender(Integer.parseInt(resultSet.getString("gioi_tinh")));
                customer.setIdentityCard(resultSet.getString("so_cmnd"));
                customer.setPhoneNumber(resultSet.getString("so_dien_thoai"));
                customer.setEmail(resultSet.getString("email"));
                customer.setAddress(resultSet.getString("dia_chi"));
                customer.setTypeId(resultSet.getString("ma_loai_khach"));

                customerList.add(customer);
            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }
}
