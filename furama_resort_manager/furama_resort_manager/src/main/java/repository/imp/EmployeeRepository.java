package repository.imp;

import model.Employee;
import repository.IEmployeeRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    @Override
    public List<Employee> loadListEmployee() {
        List<Employee> employeeList = new ArrayList<>();

        try {
            PreparedStatement preparedStatement =BaseRepository.connection.prepareStatement("select * from nhan_vien");
            ResultSet resultSet = preparedStatement.executeQuery();

            Employee employee = null;

            while (resultSet.next()){
                employee = new Employee();
                employee.setId(resultSet.getString("ma_nhan_vien"));
                employee.setName(resultSet.getString("ho_va_ten"));
                employee.setBirthDay(resultSet.getString("ngay_sinh"));
                employee.setIdentityCard(resultSet.getString("so_cmnd"));
                employee.setPhoneNumber(resultSet.getString("so_dien_thoai"));
                employee.setEmail(resultSet.getString("email"));
                employee.setAddress(resultSet.getString("dia_chi"));
                employee.setSalary(Double.parseDouble(resultSet.getString("luong")));
                employee.setPositionId(resultSet.getString("ma_vi_tri"));
                employee.setEducationDegreeId(resultSet.getString("ma_trinh_do"));
                employee.setDivisionId(resultSet.getString("ma_bo_phan"));

                employeeList.add(employee);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }
}
