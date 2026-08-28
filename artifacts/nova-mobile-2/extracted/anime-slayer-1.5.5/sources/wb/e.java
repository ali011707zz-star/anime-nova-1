package wb;

import com.google.android.gms.common.api.Api;

/* compiled from: ArrayDeque.kt */
/* loaded from: classes2.dex */
public final class e<E> extends c<E> {

    /* renamed from: f, reason: collision with root package name */
    public static final a f15460f = new a(null);

    /* renamed from: g, reason: collision with root package name */
    public static final Object[] f15461g = new Object[0];

    /* compiled from: ArrayDeque.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final int a(int i10, int i11) {
            int i12 = i10 + (i10 >> 1);
            if (i12 - i11 < 0) {
                i12 = i11;
            }
            if (i12 - 2147483639 <= 0) {
                return i12;
            }
            if (i11 > 2147483639) {
                return Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            return 2147483639;
        }
    }
}
