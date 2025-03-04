package com.emarket.repository;


import com.emarket.dto.Merchant;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MerchantRepository extends JpaRepository<Merchant, String> {

	Merchant findByEmail(String email);

	Merchant findByMobile(long mobile);

}

