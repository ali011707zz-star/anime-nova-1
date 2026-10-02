package vc;

/* compiled from: ChannelFlow.kt */
/* loaded from: classes2.dex */
public interface l<T> extends uc.f<T> {

    /* compiled from: ChannelFlow.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public static /* synthetic */ uc.f a(l lVar, ac.g gVar, int i10, tc.e eVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
            }
            if ((i11 & 1) != 0) {
                gVar = ac.h.f543f;
            }
            if ((i11 & 2) != 0) {
                i10 = -3;
            }
            if ((i11 & 4) != 0) {
                eVar = tc.e.SUSPEND;
            }
            return lVar.c(gVar, i10, eVar);
        }
    }

    uc.f<T> c(ac.g gVar, int i10, tc.e eVar);
}
