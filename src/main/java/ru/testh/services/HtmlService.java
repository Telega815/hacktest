package ru.testh.services;

import org.springframework.stereotype.Service;
import ru.testh.entities.Transactions;
import ru.testh.services.Implementations.HtmlGeneratorImpl;
import ru.testh.services.interfaces.HtmlGenerator;

import java.util.Date;
import java.util.List;

@Service
public class HtmlService {

    public String getTransactionsHtml(List<Transactions> list){
        StringBuilder str = new StringBuilder();
        for (Transactions transactions: list) {
            str.append(this.getTransactionHtml(transactions));
        }
        return str.toString();
    }

    public String getTransactionHtml(Transactions transactions){
        HtmlGenerator tr = new HtmlGeneratorImpl("tr");

        HtmlGenerator thDate = new HtmlGeneratorImpl("th");
        HtmlGenerator thPrice = new HtmlGeneratorImpl("th");
        thDate.setInnerText(new Date(transactions.getDate().getTime()).toString());
        if (transactions.getAddition())
            thPrice.setInnerText("+"+transactions.getPrice().toString());
        else
            thPrice.setInnerText("-"+transactions.getPrice().toString());

        tr.setInnerText(thDate.toString()+thPrice.toString());
        return tr.toString();
    }
}
