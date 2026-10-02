package l7;

import com.anslayer.widget.SlayerCommentAction;

/* compiled from: SlayerCommentActionExtensions.kt */
/* loaded from: classes.dex */
public final class e {
    public static final m4.b a(SlayerCommentAction slayerCommentAction, m4.b bVar, u5.g gVar) {
        jc.l.f(slayerCommentAction, "<this>");
        jc.l.f(gVar, "adapter");
        if (bVar == null) {
            return null;
        }
        slayerCommentAction.setModel(bVar);
        slayerCommentAction.setAdapter(gVar);
        slayerCommentAction.k();
        return bVar;
    }

    public static final m4.b b(SlayerCommentAction slayerCommentAction, m4.b bVar, boolean z10, u5.g gVar) {
        jc.l.f(slayerCommentAction, "<this>");
        jc.l.f(gVar, "adapter");
        if (bVar == null) {
            return null;
        }
        slayerCommentAction.setModel(bVar);
        slayerCommentAction.setAdapter(gVar);
        slayerCommentAction.l(z10);
        return bVar;
    }
}
