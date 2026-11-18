package com.gk.util;


import java.io.File;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

public class QRCodeGenerator {

    public static void generateQRCode(String text, String filePath)
            throws Exception {

        BitMatrix matrix =
                new MultiFormatWriter()
                .encode(text,
                        BarcodeFormat.QR_CODE,
                        300,
                        300);

        File file = new File(filePath);

        file.getParentFile().mkdirs();

        MatrixToImageWriter.writeToPath(
                matrix,
                "PNG",
                file.toPath());

    }

}
