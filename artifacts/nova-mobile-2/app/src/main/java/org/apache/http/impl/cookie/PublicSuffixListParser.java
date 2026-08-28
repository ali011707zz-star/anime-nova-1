package org.apache.http.impl.cookie;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes2.dex */
public class PublicSuffixListParser {
    private static final int MAX_LINE_LEN = 256;
    private final PublicSuffixFilter filter;

    public PublicSuffixListParser(PublicSuffixFilter publicSuffixFilter) {
        this.filter = publicSuffixFilter;
    }

    private boolean readLine(Reader reader, StringBuilder sb2) throws IOException {
        char c10;
        sb2.setLength(0);
        boolean z10 = false;
        do {
            int read = reader.read();
            if (read == -1 || (c10 = (char) read) == '\n') {
                return read != -1;
            }
            if (Character.isWhitespace(c10)) {
                z10 = true;
            }
            if (!z10) {
                sb2.append(c10);
            }
        } while (sb2.length() <= 256);
        throw new IOException("Line too long");
    }

    public void parse(Reader reader) throws IOException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(reader);
        StringBuilder sb2 = new StringBuilder(256);
        boolean z10 = true;
        while (z10) {
            z10 = readLine(bufferedReader, sb2);
            String sb3 = sb2.toString();
            if (sb3.length() != 0 && !sb3.startsWith("//")) {
                if (sb3.startsWith(".")) {
                    sb3 = sb3.substring(1);
                }
                boolean startsWith = sb3.startsWith("!");
                if (startsWith) {
                    sb3 = sb3.substring(1);
                }
                if (startsWith) {
                    arrayList2.add(sb3);
                } else {
                    arrayList.add(sb3);
                }
            }
        }
        this.filter.setPublicSuffixes(arrayList);
        this.filter.setExceptions(arrayList2);
    }
}
