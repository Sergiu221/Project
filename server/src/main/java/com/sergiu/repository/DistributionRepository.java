package com.sergiu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sergiu.entity.DistributionEntity;
import com.sergiu.entity.DistributionId;

@Repository
public interface DistributionRepository extends JpaRepository<DistributionEntity, DistributionId> {

}
