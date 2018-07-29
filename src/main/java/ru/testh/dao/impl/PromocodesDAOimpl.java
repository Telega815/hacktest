package ru.testh.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import ru.testh.dao.interfaces.PromocodesDAO;
import ru.testh.entities.Promocodes;

@Component
public class PromocodesDAOimpl implements PromocodesDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    @Override
    public Promocodes getPromo(String promo) {
        return (Promocodes) sessionFactory.getCurrentSession()
                .createQuery("from Promocodes where promocode = :promocode").setParameter("promocode", promo).list().get(0);
    }

    @Transactional
    @Override
    public void save(Promocodes promocodes) {
        sessionFactory.getCurrentSession().save(promocodes);
    }

    @Transactional
    @Override
    public void update(Promocodes promocodes) {
        sessionFactory.getCurrentSession().update(promocodes);
    }
}
