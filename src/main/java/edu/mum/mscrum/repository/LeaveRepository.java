/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.mum.mscrum.repository;

import edu.mum.mscrum.domain.Employeevacation;
import edu.mum.mscrum.domain.LeaveType;
import edu.mum.mscrum.util.GenericDao;
import java.util.List;

/**
 *
 * @author Mahabub
 */
public interface LeaveRepository extends GenericDao<Employeevacation> { 
    public List<LeaveType> getTypeList();
}
