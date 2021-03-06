/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.mum.mscrum.domain;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import javax.validation.constraints.NotNull;

/**
 *
 * @author Mahabub
 */
@Entity
public class ProductBacklog {
    
    @Id @GeneratedValue
    private int id;
    
    @NotNull
    private String name;
    @Temporal(TemporalType.DATE)
    private Date createDate;
    
    @OneToOne(cascade = CascadeType.MERGE)   
    private Employee productOwner;

    public Employee getProductOwner() {
        return productOwner;
    }

    public void setProductOwner(Employee productOwner) {
        this.productOwner = productOwner;
    }
      

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

   
    
    
}
