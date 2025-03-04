package com.emarket.repository;

import com.emarket.dto.Payment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentRepository extends JpaRepository<Payment, Integer>
{

	Payment findByName(String name);

}
