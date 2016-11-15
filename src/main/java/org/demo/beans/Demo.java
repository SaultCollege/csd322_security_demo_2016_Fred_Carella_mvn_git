/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.demo.beans;

import java.io.Serializable;
import java.util.Date;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author fcarella
 */
@Named(value = "demo")
@SessionScoped
public class Demo implements Serializable{
    private String name="12";
    private int age=10;
    private Date birthDate;
    private int hole1=4;
    private int hole2=4;
    private int hole3=4;
    private int hole4=4;
    private int hole5=4;
    private int hole6=4;
    private int hole7=4;
    private int hole8=4;
    private int hole9=4;
    /**
     * Creates a new instance of Demo
     */
    public Demo() {
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the age
     */
    public int getAge() {
        return age;
    }

    /**
     * @param age the age to set
     */
    public void setAge(int age) {
        this.age = age;
    }

    /**
     * @return the birthDate
     */
    public Date getBirthDate() {
        return birthDate;
    }

    /**
     * @param birthDate the birthDate to set
     */
    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    /**
     * @return the hole1
     */
    public int getHole1() {
        return hole1;
    }

    /**
     * @param hole1 the hole1 to set
     */
    public void setHole1(int hole1) {
        this.hole1 = hole1;
    }

    /**
     * @return the hole2
     */
    public int getHole2() {
        return hole2;
    }

    /**
     * @param hole2 the hole2 to set
     */
    public void setHole2(int hole2) {
        this.hole2 = hole2;
    }

    /**
     * @return the hole3
     */
    public int getHole3() {
        return hole3;
    }

    /**
     * @param hole3 the hole3 to set
     */
    public void setHole3(int hole3) {
        this.hole3 = hole3;
    }

    /**
     * @return the hole4
     */
    public int getHole4() {
        return hole4;
    }

    /**
     * @param hole4 the hole4 to set
     */
    public void setHole4(int hole4) {
        this.hole4 = hole4;
    }

    /**
     * @return the hole5
     */
    public int getHole5() {
        return hole5;
    }

    /**
     * @param hole5 the hole5 to set
     */
    public void setHole5(int hole5) {
        this.hole5 = hole5;
    }

    /**
     * @return the hole6
     */
    public int getHole6() {
        return hole6;
    }

    /**
     * @param hole6 the hole6 to set
     */
    public void setHole6(int hole6) {
        this.hole6 = hole6;
    }

    /**
     * @return the hole7
     */
    public int getHole7() {
        return hole7;
    }

    /**
     * @param hole7 the hole7 to set
     */
    public void setHole7(int hole7) {
        this.hole7 = hole7;
    }

    /**
     * @return the hole8
     */
    public int getHole8() {
        return hole8;
    }

    /**
     * @param hole8 the hole8 to set
     */
    public void setHole8(int hole8) {
        this.hole8 = hole8;
    }

    /**
     * @return the hole9
     */
    public int getHole9() {
        return hole9;
    }

    /**
     * @param hole9 the hole9 to set
     */
    public void setHole9(int hole9) {
        this.hole9 = hole9;
    }
}
