/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.mum.mscrum.service;

import edu.mum.mscrum.domain.ProductBacklog;
import edu.mum.mscrum.domain.ReleaseBacklog;
import java.util.List;

/**
 *
 * @author Mahabub
 */
public interface ReleaseBacklogService {
    void createReleaseBacklog(ReleaseBacklog releaseBacklog);
    List<ReleaseBacklog> getAllReleaseBacklog();
    ReleaseBacklog findReleaseBacklog(int id);
    void delete(int id);
    
    
    List<ReleaseBacklog> filterByProductBacklogId(int id);
    List<ReleaseBacklog> getAllReleaseBacklogByOwner(int ownerId);

    public ReleaseBacklog update(ReleaseBacklog releasebacklog);
}
