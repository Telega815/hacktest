package ru.testh.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import ru.testh.dao.interfaces.TransactionsDAO;
import ru.testh.entities.Transactions;

import java.util.List;

@Component
public class TransactionsDAOimpl implements TransactionsDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    @Override
    public List<Transactions> getTransactions() {
        return (List<Transactions>) sessionFactory.getCurrentSession()
                .createCriteria(Transactions.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
    }

    @Transactional
    @Override
    public void saveTr(Transactions transactions) {
        sessionFactory.getCurrentSession().save(transactions);
    }
}
