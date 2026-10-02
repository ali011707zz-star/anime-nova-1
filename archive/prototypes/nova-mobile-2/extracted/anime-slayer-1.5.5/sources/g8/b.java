package g8;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ImageHeaderParserRegistry.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final List<ImageHeaderParser> f7027a = new ArrayList();

    public synchronized void a(ImageHeaderParser imageHeaderParser) {
        this.f7027a.add(imageHeaderParser);
    }

    public synchronized List<ImageHeaderParser> b() {
        return this.f7027a;
    }
}
