package ru.web.repository;

import org.springframework.stereotype.Controller;
import ru.web.model.Contact;

import java.util.Collection;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

@Controller
public class ContactRepo {

    private HashMap<Integer, Contact> repo;
    private static final AtomicInteger AUTO_ID = new AtomicInteger(1);

    public ContactRepo() {
        HashMap<Integer, Contact> contactMap = new HashMap<>();
        contactMap.put(AUTO_ID.getAndIncrement(), Contact.builder()
                .id(1)
                .name("Dima")
                .lastName("Puatiletov")
                .email("di@pu")
                .phone(String.valueOf(1111111111))
                .build());
        contactMap.put(AUTO_ID.getAndIncrement(), Contact.builder()
                .id(2)
                .name("Justice")
                .lastName("Wolf")
                .email("Ju@wo")
                .phone(String.valueOf(222222222222L))
                .build());
        contactMap.put(AUTO_ID.getAndIncrement(), Contact.builder()
                .id(3)
                .name("Ju")
                .lastName("Wo")
                .email("wu@ju")
                .phone(String.valueOf(33333333333L))
                .build());
        this.repo = contactMap;
    }

    public Contact getContactById(Integer id) {
        return repo.get(id);
    }

    public Collection<Contact> getAllContacts() {
        return repo.values();
    }


    public void addContact(Contact contact) {
        contact.setId(AUTO_ID.getAndIncrement());
        repo.put((contact.getId()), contact);
    }

    public void edit(Contact contact) {
        repo.put(contact.getId(), contact);
    }

    public void deleteContact(Integer id) {
        repo.remove(id);
    }
}
