package okhttp3;

import cd.f;
import cd.g;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import org.apache.http.client.utils.URLEncodedUtils;

/* loaded from: classes.dex */
public final class FormBody extends RequestBody {
    private static final MediaType CONTENT_TYPE = MediaType.get(URLEncodedUtils.CONTENT_TYPE);
    private final List<String> encodedNames;
    private final List<String> encodedValues;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private final Charset charset;
        private final List<String> names;
        private final List<String> values;

        public Builder() {
            this(null);
        }

        public Builder add(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str2 != null) {
                this.names.add(HttpUrl.canonicalize(str, HttpUrl.FORM_ENCODE_SET, false, false, true, true, this.charset));
                this.values.add(HttpUrl.canonicalize(str2, HttpUrl.FORM_ENCODE_SET, false, false, true, true, this.charset));
                return this;
            }
            throw new NullPointerException("value == null");
        }

        public Builder addEncoded(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str2 != null) {
                this.names.add(HttpUrl.canonicalize(str, HttpUrl.FORM_ENCODE_SET, true, false, true, true, this.charset));
                this.values.add(HttpUrl.canonicalize(str2, HttpUrl.FORM_ENCODE_SET, true, false, true, true, this.charset));
                return this;
            }
            throw new NullPointerException("value == null");
        }

        public FormBody build() {
            return new FormBody(this.names, this.values);
        }

        public Builder(Charset charset) {
            this.names = new ArrayList();
            this.values = new ArrayList();
            this.charset = charset;
        }
    }

    public FormBody(List<String> list, List<String> list2) {
        this.encodedNames = Util.immutableList(list);
        this.encodedValues = Util.immutableList(list2);
    }

    private long writeOrCountBytes(@Nullable g gVar, boolean z10) {
        f c10;
        if (z10) {
            c10 = new f();
        } else {
            c10 = gVar.c();
        }
        int size = this.encodedNames.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                c10.O(38);
            }
            c10.t0(this.encodedNames.get(i10));
            c10.O(61);
            c10.t0(this.encodedValues.get(i10));
        }
        if (!z10) {
            return 0L;
        }
        long N0 = c10.N0();
        c10.b();
        return N0;
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return writeOrCountBytes(null, true);
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return CONTENT_TYPE;
    }

    public String encodedName(int i10) {
        return this.encodedNames.get(i10);
    }

    public String encodedValue(int i10) {
        return this.encodedValues.get(i10);
    }

    public String name(int i10) {
        return HttpUrl.percentDecode(encodedName(i10), true);
    }

    public int size() {
        return this.encodedNames.size();
    }

    public String value(int i10) {
        return HttpUrl.percentDecode(encodedValue(i10), true);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(g gVar) throws IOException {
        writeOrCountBytes(gVar, false);
    }
}
