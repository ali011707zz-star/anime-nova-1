package org.apache.http.impl.conn;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.logging.Log;
import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes2.dex */
public class Wire {
    private final Log log;

    public Wire(Log log) {
        this.log = log;
    }

    private void wire(String str, InputStream inputStream) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                break;
            }
            if (read == 13) {
                sb2.append("[\\r]");
            } else if (read == 10) {
                sb2.append("[\\n]\"");
                sb2.insert(0, "\"");
                sb2.insert(0, str);
                this.log.debug(sb2.toString());
                sb2.setLength(0);
            } else if (read >= 32 && read <= 127) {
                sb2.append((char) read);
            } else {
                sb2.append("[0x");
                sb2.append(Integer.toHexString(read));
                sb2.append("]");
            }
        }
        if (sb2.length() > 0) {
            sb2.append('\"');
            sb2.insert(0, '\"');
            sb2.insert(0, str);
            this.log.debug(sb2.toString());
        }
    }

    public boolean enabled() {
        return this.log.isDebugEnabled();
    }

    public void input(InputStream inputStream) throws IOException {
        if (inputStream != null) {
            wire("<< ", inputStream);
            return;
        }
        throw new IllegalArgumentException("Input may not be null");
    }

    public void output(InputStream inputStream) throws IOException {
        if (inputStream != null) {
            wire(">> ", inputStream);
            return;
        }
        throw new IllegalArgumentException("Output may not be null");
    }

    public void input(byte[] bArr, int i10, int i11) throws IOException {
        if (bArr != null) {
            wire("<< ", new ByteArrayInputStream(bArr, i10, i11));
            return;
        }
        throw new IllegalArgumentException("Input may not be null");
    }

    public void output(byte[] bArr, int i10, int i11) throws IOException {
        if (bArr != null) {
            wire(">> ", new ByteArrayInputStream(bArr, i10, i11));
            return;
        }
        throw new IllegalArgumentException("Output may not be null");
    }

    public void input(byte[] bArr) throws IOException {
        if (bArr != null) {
            wire("<< ", new ByteArrayInputStream(bArr));
            return;
        }
        throw new IllegalArgumentException("Input may not be null");
    }

    public void output(byte[] bArr) throws IOException {
        if (bArr != null) {
            wire(">> ", new ByteArrayInputStream(bArr));
            return;
        }
        throw new IllegalArgumentException("Output may not be null");
    }

    public void input(int i10) throws IOException {
        input(new byte[]{(byte) i10});
    }

    public void output(int i10) throws IOException {
        output(new byte[]{(byte) i10});
    }

    @Deprecated
    public void input(String str) throws IOException {
        if (str != null) {
            input(str.getBytes());
            return;
        }
        throw new IllegalArgumentException("Input may not be null");
    }

    @Deprecated
    public void output(String str) throws IOException {
        if (str != null) {
            output(str.getBytes());
            return;
        }
        throw new IllegalArgumentException("Output may not be null");
    }
}
