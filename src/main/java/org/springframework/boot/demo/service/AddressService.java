package org.springframework.boot.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Address;
import org.springframework.boot.demo.repository.AddressRepository;
import org.springframework.stereotype.Service;

@Service
public class AddressService {
    private final AddressRepository addressRepository;

    @Autowired
    public AddressService(AddressRepository addressRepository) {
        this.addressRepository = addressRepository;
    }

    public Address save(Address address) {
        return addressRepository.save(address);
    }

    public void deleteById(int id){
        addressRepository.deleteById(Math.toIntExact(id));
    }
}
