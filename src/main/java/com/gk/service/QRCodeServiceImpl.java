package com.gk.service;

import java.io.File;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.gk.entity.Student;
import com.gk.util.QRCodeGenerator;

@Service
public class QRCodeServiceImpl implements QRCodeService {

    /*
     * URL which will be stored inside the QR code.
     *
     * Example:
     * http://192.168.0.111:6568/StudentQRCodeSystem
     */
	
    @Value("${app.qr.base-url}")
    private String qrBaseUrl;


    /*
     * Folder where QR images will be stored.
     *
     * Example:
     * D:/StudentQRCodeImages/
     */
    
    @Value("${app.qr.storage-path}")
    private String qrStoragePath;


    @Override
    public String generateQRCode(Student student) {

        try {

         
            // 1. Create QR URL
           
            String qrText =
                    qrBaseUrl
                    + "/student/profile/"
                    + student.getStudentId();


            System.out.println("QR URL : " + qrText);


            
            // 2. Create QR storage folder
           
            File directory = new File(qrStoragePath);

            if (!directory.exists()) {

                directory.mkdirs();

            }


           
            // 3. Create QR file name
          

            String fileName =
                    student.getStudentName()
                            .trim()
                            .replaceAll(
                                    "[^a-zA-Z0-9 ]",
                                    "")
                            .replaceAll(
                                    "\\s+",
                                    "_")
                    + "_"
                    + student.getStudentId();


            
            // 4. Create complete QR file path
          
            String qrPath =
                    qrStoragePath
                    + fileName
                    + ".png";


            System.out.println(
                    "QR File Path : " + qrPath);


   
            // 5. Generate QR Code
           

            QRCodeGenerator.generateQRCode(
                    qrText,
                    qrPath);


            System.out.println(
                    "QR Generated Successfully");


          
            // 6. Return QR file path
           

            return qrPath;


        } catch (Exception e) {

            throw new RuntimeException(
                    "Failed to generate QR Code",
                    e);
        }
    }
    
    @Override
    public void deleteQRCode(String qrCodePath) {

        if (qrCodePath == null || qrCodePath.isBlank()) {
            return;
        }

        File qrFile = new File(qrCodePath);

        if (qrFile.exists()) {

            boolean deleted = qrFile.delete();

            if (deleted) {
                System.out.println(
                    "QR code deleted: " + qrCodePath);
            } else {
                System.out.println(
                    "Unable to delete QR code: " + qrCodePath);
            }

        }
    }
}