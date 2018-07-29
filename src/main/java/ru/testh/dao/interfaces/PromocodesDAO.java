package ru.testh.dao.interfaces;

import ru.testh.entities.Promocodes;

public interface PromocodesDAO {
    Promocodes getPromo(String promo);
    void save(Promocodes promocodes);
    void update(Promocodes promocodes);
}
