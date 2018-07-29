package ru.testh.dao.interfaces;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import ru.testh.entities.Transactions;

import java.util.List;

public interface TransactionsDAO {



    List<Transactions> getTransactions();
    void saveTr(Transactions transactions);

}
