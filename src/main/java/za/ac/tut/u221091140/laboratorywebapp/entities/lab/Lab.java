package za.ac.tut.u221091140.laboratorywebapp.entities.lab;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "lab_tb")
public class Lab {

    @Id
    @Column(name = "lab_no",nullable = false)
    private String labNo;
    @Column(name = "building")
    private Integer buildingNo;
    private String campus;

    @Column(nullable = false)
    private Boolean isOpen = false;




    public Lab() {
    }

    public Boolean getIsOpen() {
        return isOpen;
    }

    public Lab setIsOpen(Boolean isOpen) {
        this.isOpen = isOpen;
        return this;
    }

    public String getLabNo() {
        return labNo;
    }

    public void setLabNo(String labNo) {
        this.labNo = labNo;
    }

    public Integer getBuildingNo() {
        return buildingNo;
    }

    public void setBuildingNo(Integer buildingNo) {
        this.buildingNo = buildingNo;
    }

    public String getCampus() {
        return campus;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }


}
