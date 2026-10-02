package p7;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import org.apache.http.protocol.HTTP;

/* compiled from: Key.java */
/* loaded from: classes.dex */
public interface e {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f12083a = Charset.forName(HTTP.UTF_8);

    void b(MessageDigest messageDigest);

    boolean equals(Object obj);

    int hashCode();
}
