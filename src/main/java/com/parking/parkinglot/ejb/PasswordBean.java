package com.parking.parkinglot.ejb;

import com.parking.parkinglot.common.CarDto;
import com.parking.parkinglot.entities.Car;
import com.parking.parkinglot.entities.User;
import jakarta.ejb.EJBException;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


@Stateless
public class PasswordBean {
    private static final Logger LOG = Logger.getLogger(PasswordBean.class.getName());

    public String convertToSha256(String password) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(password.getBytes());
            byte[] digest = messageDigest.digest();
            String result = new BigInteger(1, digest).toString(16);
            return result;
        } catch (NoSuchAlgorithmException ex) {
            LOG.log(Level.SEVERE, "Could not convert password", ex);
        }
        return null;
    }
}
