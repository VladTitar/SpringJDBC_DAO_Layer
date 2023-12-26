package ru.netology.springjdbc_dao_layer.repository;

import java.util.List;

public interface OrderDAO {
    List<String> getProductNameByCustomerName(String name);
}