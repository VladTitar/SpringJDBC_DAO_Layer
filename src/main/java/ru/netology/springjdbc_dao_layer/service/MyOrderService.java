package ru.netology.springjdbc_dao_layer.service;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.netology.springjdbc_dao_layer.repository.OrderDAO;

@Service
@RequiredArgsConstructor
public class MyOrderService implements OrderService {

    private final OrderDAO orderDao;

    @Override
    public String getProductNameByCustomerName(String name) {
        return String.join(", ", orderDao.getProductNameByCustomerName(name));
    }
}